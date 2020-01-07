$fullPath = 'C:\Program Files\WindowsPowerShell\Modules\PSCargoCompletion'

Robocopy . $fullPath /mir /XD .vscode .git images /XF .gitattributes .gitignore newParser.ps1