
function cargoCompletion {
    param($wordToComplete, $commandAst)

$commandTree = & {
	New-CommandTree build "Compile the current package" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "--package" "Package to build (see `cargo help pkgid`)"
 	New-CommandTree "--all" "for --workspace (deprecated)"
 	New-CommandTree "-workspace" "all packages in the workspace"
 	New-CommandTree "-exclude" "Exclude packages from the build"
 	New-CommandTree "--jobs" "Number of parallel jobs, defaults to # of CPUs"
 	New-CommandTree "-lib" "only this package's library"
 	New-CommandTree "-bin" "Build only the specified binary"
 	New-CommandTree "-bins" "all binaries"
 	New-CommandTree "-example" "Build only the specified example"
 	New-CommandTree "-examples" "all examples"
 	New-CommandTree "-test" "Build only the specified test target"
 	New-CommandTree "-tests" "all tests"
 	New-CommandTree "-bench" "Build only the specified bench target"
 	New-CommandTree "-benches" "all benches"
 	New-CommandTree "--all-targets" "Build all targets"
 	New-CommandTree "-release" "artifacts in release mode, with optimizations"
 	New-CommandTree "-profile" "Build artifacts with the specified profile"
 	New-CommandTree "-features" "Space-separated list of features to activate"
 	New-CommandTree "--all-features" "Activate all available features"
 	New-CommandTree "--no-default" "Do not activate the `default` feature"
 	New-CommandTree "-target" "Build for the target triple"
 	New-CommandTree "--target-dir" "for all generated artifacts"
 	New-CommandTree "--out-dir" "final artifacts to this directory (unstable)"
 	New-CommandTree "--manifest-path" "to Cargo.toml"
 	New-CommandTree "--message-format" "format"
 	New-CommandTree "--build-plan" "Output the build plan in JSON (unstable)"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree check "Analyze the current package and report errors, but don't build object files" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "--package" "Package(s) to check"
 	New-CommandTree "--all" "for --workspace (deprecated)"
 	New-CommandTree "-workspace" "all packages in the workspace"
 	New-CommandTree "-exclude" "Exclude packages from the check"
 	New-CommandTree "--jobs" "Number of parallel jobs, defaults to # of CPUs"
 	New-CommandTree "-lib" "only this package's library"
 	New-CommandTree "-bin" "Check only the specified binary"
 	New-CommandTree "-bins" "all binaries"
 	New-CommandTree "-example" "Check only the specified example"
 	New-CommandTree "-examples" "all examples"
 	New-CommandTree "-test" "Check only the specified test target"
 	New-CommandTree "-tests" "all tests"
 	New-CommandTree "-bench" "Check only the specified bench target"
 	New-CommandTree "-benches" "all benches"
 	New-CommandTree "--all-targets" "Check all targets"
 	New-CommandTree "-release" "artifacts in release mode, with optimizations"
 	New-CommandTree "-profile" "Check artifacts with the specified profile"
 	New-CommandTree "-features" "Space-separated list of features to activate"
 	New-CommandTree "--all-features" "Activate all available features"
 	New-CommandTree "--no-default" "Do not activate the `default` feature"
 	New-CommandTree "-target" "Check for the target triple"
 	New-CommandTree "--target-dir" "for all generated artifacts"
 	New-CommandTree "--manifest-path" "to Cargo.toml"
 	New-CommandTree "--message-format" "format"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree clean "Remove the target directory" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "--package" "Package to clean artifacts for"
 	New-CommandTree "--manifest-path" "to Cargo.toml"
 	New-CommandTree "-target" "Target triple to clean output for"
 	New-CommandTree "--target-dir" "for all generated artifacts"
 	New-CommandTree "-release" "or not to clean release artifacts"
 	New-CommandTree "-profile" "Clean artifacts of the specified profile"
 	New-CommandTree "-doc" "or not to clean just the documentation directory"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree doc "Build this package's and its dependencies' documentation" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "-open" "the docs in a browser after the operation"
 	New-CommandTree "--package" "Package to document"
 	New-CommandTree "--all" "for --workspace (deprecated)"
 	New-CommandTree "-workspace" "all packages in the workspace"
 	New-CommandTree "-exclude" "Exclude packages from the build"
 	New-CommandTree "--no-deps" "Don't build documentation for dependencies"
 	New-CommandTree "--document-private" "Document private items"
 	New-CommandTree "--jobs" "Number of parallel jobs, defaults to # of CPUs"
 	New-CommandTree "-lib" "only this package's library"
 	New-CommandTree "-bin" "Document only the specified binary"
 	New-CommandTree "-bins" "all binaries"
 	New-CommandTree "-release" "artifacts in release mode, with optimizations"
 	New-CommandTree "-profile" "Build artifacts with the specified profile"
 	New-CommandTree "-features" "Space-separated list of features to activate"
 	New-CommandTree "--all-features" "Activate all available features"
 	New-CommandTree "--no-default" "Do not activate the `default` feature"
 	New-CommandTree "-target" "Build for the target triple"
 	New-CommandTree "--target-dir" "for all generated artifacts"
 	New-CommandTree "--manifest-path" "to Cargo.toml"
 	New-CommandTree "--message-format" "format"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree new "Create a new cargo package" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "-registry" "Registry to use"
 	New-CommandTree "-vcs" "Initialize a new repository for the given version control system (git, hg, pijul, or"
 	New-CommandTree "-bin" "a binary (application) template [default]"
 	New-CommandTree "-lib" "a library template"
 	New-CommandTree "-edition" "Edition to set for the crate generated [possible values: 2015, 2018]"
 	New-CommandTree "-name" "Set the resulting package name, defaults to the directory name"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree init "Create a new cargo package in an existing directory" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "-registry" "Registry to use"
 	New-CommandTree "-vcs" "Initialize a new repository for the given version control system (git, hg, pijul, or"
 	New-CommandTree "-bin" "a binary (application) template [default]"
 	New-CommandTree "-lib" "a library template"
 	New-CommandTree "-edition" "Edition to set for the crate generated [possible values: 2015, 2018]"
 	New-CommandTree "-name" "Set the resulting package name, defaults to the directory name"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree run "Run a binary or example of the local package" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "-bin" "Name of the bin target to run"
 	New-CommandTree "-example" "Name of the example target to run"
 	New-CommandTree "--package" "Package with the target to run"
 	New-CommandTree "--jobs" "Number of parallel jobs, defaults to # of CPUs"
 	New-CommandTree "-release" "artifacts in release mode, with optimizations"
 	New-CommandTree "-profile" "Build artifacts with the specified profile"
 	New-CommandTree "-features" "Space-separated list of features to activate"
 	New-CommandTree "--all-features" "Activate all available features"
 	New-CommandTree "--no-default" "Do not activate the `default` feature"
 	New-CommandTree "-target" "Build for the target triple"
 	New-CommandTree "--target-dir" "for all generated artifacts"
 	New-CommandTree "--manifest-path" "to Cargo.toml"
 	New-CommandTree "--message-format" "format"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree test "Run the tests" {
	New-CommandTree "--quiet" "one character per test instead of one line"
 	New-CommandTree "-lib" "only this package's library unit tests"
 	New-CommandTree "-bin" "Test only the specified binary"
 	New-CommandTree "-bins" "all binaries"
 	New-CommandTree "-example" "Test only the specified example"
 	New-CommandTree "-examples" "all examples"
 	New-CommandTree "-test" "Test only the specified test target"
 	New-CommandTree "-tests" "all tests"
 	New-CommandTree "-bench" "Test only the specified bench target"
 	New-CommandTree "-benches" "all benches"
 	New-CommandTree "--all-targets" "Test all targets"
 	New-CommandTree "-doc" "only this library's documentation"
 	New-CommandTree "--no-run" "Compile, but don't run tests"
 	New-CommandTree "--no-fail" "Run all tests regardless of failure"
 	New-CommandTree "--package" "Package to run tests for"
 	New-CommandTree "--all" "for --workspace (deprecated)"
 	New-CommandTree "-workspace" "all packages in the workspace"
 	New-CommandTree "-exclude" "Exclude packages from the test"
 	New-CommandTree "--jobs" "Number of parallel jobs, defaults to # of CPUs"
 	New-CommandTree "-release" "artifacts in release mode, with optimizations"
 	New-CommandTree "-profile" "Build artifacts with the specified profile"
 	New-CommandTree "-features" "Space-separated list of features to activate"
 	New-CommandTree "--all-features" "Activate all available features"
 	New-CommandTree "--no-default" "Do not activate the `default` feature"
 	New-CommandTree "-target" "Build for the target triple"
 	New-CommandTree "--target-dir" "for all generated artifacts"
 	New-CommandTree "--manifest-path" "to Cargo.toml"
 	New-CommandTree "--message-format" "format"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree bench "Run the benchmarks" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "-lib" "only this package's library"
 	New-CommandTree "-bin" "Benchmark only the specified binary"
 	New-CommandTree "-bins" "all binaries"
 	New-CommandTree "-example" "Benchmark only the specified example"
 	New-CommandTree "-examples" "all examples"
 	New-CommandTree "-test" "Benchmark only the specified test target"
 	New-CommandTree "-tests" "all tests"
 	New-CommandTree "-bench" "Benchmark only the specified bench target"
 	New-CommandTree "-benches" "all benches"
 	New-CommandTree "--all-targets" "Benchmark all targets"
 	New-CommandTree "--no-run" "Compile, but don't run benchmarks"
 	New-CommandTree "--package" "Package to run benchmarks for"
 	New-CommandTree "--all" "for --workspace (deprecated)"
 	New-CommandTree "-workspace" "all packages in the workspace"
 	New-CommandTree "-exclude" "Exclude packages from the benchmark"
 	New-CommandTree "--jobs" "Number of parallel jobs, defaults to # of CPUs"
 	New-CommandTree "-features" "Space-separated list of features to activate"
 	New-CommandTree "--all-features" "Activate all available features"
 	New-CommandTree "--no-default" "Do not activate the `default` feature"
 	New-CommandTree "-target" "Build for the target triple"
 	New-CommandTree "--target-dir" "for all generated artifacts"
 	New-CommandTree "--manifest-path" "to Cargo.toml"
 	New-CommandTree "--message-format" "format"
 	New-CommandTree "--no-fail" "Run all benchmarks regardless of failure"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree update "Update dependencies listed in Cargo.lock" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "--package" "Package to update"
 	New-CommandTree "-aggressive" "updating all dependencies of <name> as well"
 	New-CommandTree "--dry-run" "Don't actually write the lockfile"
 	New-CommandTree "-precise" "Update a single dependency to exactly PRECISE"
 	New-CommandTree "--manifest-path" "to Cargo.toml"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree search "Search registry for crates" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "-index" "Registry index URL to upload the package to"
 	New-CommandTree "-limit" "Limit the number of results (default: 10, max: 100)"
 	New-CommandTree "-registry" "Registry to use"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree publish "Package and upload this package to the registry" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "-index" "Registry index URL to upload the package to"
 	New-CommandTree "-token" "Token to use when uploading"
 	New-CommandTree "--no-verify" "Don't verify the contents by building them"
 	New-CommandTree "--allow-dirty" "Allow dirty working directories to be packaged"
 	New-CommandTree "-target" "Build for the target triple"
 	New-CommandTree "--target-dir" "for all generated artifacts"
 	New-CommandTree "--manifest-path" "to Cargo.toml"
 	New-CommandTree "-features" "Space-separated list of features to activate"
 	New-CommandTree "--all-features" "Activate all available features"
 	New-CommandTree "--no-default" "Do not activate the `default` feature"
 	New-CommandTree "--jobs" "Number of parallel jobs, defaults to # of CPUs"
 	New-CommandTree "--dry-run" "Perform all checks without uploading"
 	New-CommandTree "-registry" "Registry to publish to"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree install "Install a Rust binary. Default location is $HOME/.cargo/bin" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "-version" "Specify a version to install"
 	New-CommandTree "-git" "Git URL to install the specified crate from"
 	New-CommandTree "-branch" "Branch to use when installing from git"
 	New-CommandTree "-tag" "Tag to use when installing from git"
 	New-CommandTree "-rev" "Specific commit to use when installing from git"
 	New-CommandTree "-path" "Filesystem path to local crate to install"
 	New-CommandTree "-list" "all installed packages and their versions"
 	New-CommandTree "--jobs" "Number of parallel jobs, defaults to # of CPUs"
 	New-CommandTree "--force" "overwriting existing crates or binaries"
 	New-CommandTree "--no-track" "Do not save tracking information (unstable)"
 	New-CommandTree "-features" "Space-separated list of features to activate"
 	New-CommandTree "--all-features" "Activate all available features"
 	New-CommandTree "--no-default" "Do not activate the `default` feature"
 	New-CommandTree "-profile" "Install artifacts with the specified profile"
 	New-CommandTree "-debug" "in debug mode instead of release mode"
 	New-CommandTree "-bin" "Install only the specified binary"
 	New-CommandTree "-bins" "all binaries"
 	New-CommandTree "-example" "Install only the specified example"
 	New-CommandTree "-examples" "all examples"
 	New-CommandTree "-target" "Build for the target triple"
 	New-CommandTree "-root" "Directory to install packages into"
 	New-CommandTree "-registry" "Registry to use"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}
 New-CommandTree uninstall "Uninstall a Rust binary" {
	New-CommandTree "--quiet" "output printed to stdout"
 	New-CommandTree "--package" "Package to uninstall"
 	New-CommandTree "-bin" "Only uninstall the binary NAME"
 	New-CommandTree "-root" "Directory to uninstall packages from"
 	New-CommandTree "--verbose" "verbose output (-vv very verbose/build.rs output)"
 	New-CommandTree "-color" "Coloring: auto, always, never"
 	New-CommandTree "-frozen" "Cargo.lock and cache are up to date"
 	New-CommandTree "-locked" "Cargo.lock is up to date"
 	New-CommandTree "-offline" "without accessing the network"
 	New-CommandTree "-Z" "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
 	New-CommandTree "--help" "help information"

}

}

    Get-CommandTreeCompletion $wordToComplete $commandAst $commandTree
}

Register-ArgumentCompleter -CommandName cargo -Native -ScriptBlock $function:cargoCompletion