# WSL

This document contains instructions on how to install and configure Windows Subsystem for Linux (WSL).

## Configure

### Call PowerShell Core from Windows

> **Note** By configuring WSL to call PowerShell Core from Windows, we'll only have to maintain a single PowerShell environment for both Windows and WSL.

1. Open PowerShell.

1. Install PowerShell Core:

    ```cmd
    winget install -e --id Microsoft.PowerShell
    ```

1. Open Bash.

1. Add the following line to your `~/.bash_aliases` file:

    ```bash
    alias pwsh="pwsh.exe"
    ```

1. Use the `pwsh` command to call PowerShell Core from Windows:

    ```bash
    $ pwsh
    PowerShell 7.3.1
    ```
