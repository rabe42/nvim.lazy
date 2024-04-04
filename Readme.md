# nvim.lazy

This is my configuration of nvim, using the package manager `lazy`.

Basically it is a setup for the `rust` programming language, but it supports also Lua, JavaScript 
and TypeScript.

## Preconditions

In order to successful install this setup the following tools must be installed:

### Package Manager
* git 

### Telescope
* fd
* rg - ripgrep

### Treesitter
* A compiler for C
* cmake

### LSPs
* nodejs
* python
* unzip
* 7z

### Rust
* lldb
* rustup - A complete rust installation

## Windows

If you use the Microsoft C-Compiler, you **must** run vim on all first projects in the 
"Developer PowerShell for VS XXXX". Only in this way, `treesitter` will find the compiler, 
needed to create the parsers. The whole `treesitter` thing is very unstable in Windows.
To get to a working situation, you may just remove `treesitter.lua` from the plugin directory.

If this is not working (as it does not of 2024-04-04) use the WSL2 and
crosscompile rust windows executables using `cargo install cross` and the
`cross build --target ` command. This requires the installation of
docker/podman on the WSL linux.

If you are using Arch/Manjaro, consider the installation of podman before
the installation of Manjaro. In this way the podman installation on Windows do not
interfere with the podman installation in your Linux system.
