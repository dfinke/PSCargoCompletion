param(
    $outFile = ".\CargoCompletion.ps1",
    [Switch]$Raw
)

#Requires -Modules PSStringScanner

Import-Module PSStringScanner

function Get-CargoCLI {
    function DoParse {
        param($line)

        $ss = New-PSStringScanner $line

        if ($ss.Check("\s+.*--\w+-")) {
            $switch = $ss.Scan("\s+.*--\w+-\w+").trim()
            $null = $ss.Scan("<\w+>(\.\.\.)?\s+")
            $description = $ss.Scan("\s+.*$").trim()
        }
        elseif ($ss.Check("\s+-.*--")) {
            $switch = $ss.Scan("--\w+\s+")
            $description = $ss.Scan("\s+.*$").trim()
        }
        else {
            $switch = $ss.Scan("-\w+\s+")
            $description = $ss.Scan("\s+.*$").trim()
        }

        if ($null -ne $switch) {
            [PSCustomObject][Ordered]@{
                Switch      = $switch
                Description = $description
                Original    = $line
            }
        }
    }

    $r = cargo -h
    $found = $false
    foreach ($line in $r) {
        $ss = New-PSStringScanner $line

        if ($found) {
            if ($ss.Check("^\s+")) {
                $Command = $ss.Scan("\w+")
                Write-Progress -Activity "Running cargo" -Status "Parsing $Command"
                $options = $null
                $options = "cargo $($command) -h" | iex

                $optionFound = $false
                $switches = $null
                $switches = $(foreach ($option in $options) {
                        $ssOption = New-PSStringScanner $option
                        if ($optionFound) {
                            if ($ssOption.Check("^\s+-h")) {
                                DoParse $option
                                break
                            }
                            DoParse $option
                        }
                        else {
                            $optionFound = $ssOption.Check("OPTIONS:")
                        }
                    })

                [PSCustomObject][Ordered]@{
                    Command     = $Command
                    Description = $ss.Scan(".*").Trim()
                    Switches    = $Switches
                }
            }
        }
        else {
            $found = $ss.Check("^Some common")
        }
    }
}

function Invoke-CodeGetTabExpansion {

    $commandTree = $(foreach ($item in Get-CargoCLI) {


            @"
New-CommandTree $($item.Command) "$($item.description)" {
$(foreach ($subItem in $item.Switches) {
    "`tNew-CommandTree `"{0}`" `"{1}`"`n" -f $($subItem.Switch).Trim(), $($subItem.Description)
})
}

"@
        })

    @"

function cargoCompletion {
    param(`$wordToComplete, `$commandAst)

`$commandTree = & {
`t$commandTree
}

    Get-CommandTreeCompletion `$wordToComplete `$commandAst `$commandTree
}

Register-ArgumentCompleter -CommandName cargo -Native -ScriptBlock `$function:cargoCompletion
"@

}

$expansion = Invoke-CodeGetTabExpansion
if ($Raw) {
    $expansion
}
else {
    $expansion | Set-Content -Encoding Ascii $outFile
}