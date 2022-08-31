# WSL

This document provides instructions on how to install and configure Windows Subsystem for Linux (WSL).

## Install

1. Open an **administrator** PowerShell or Command Prompt.

1. Install WSL with the Ubuntu distribution:

    ```text
    wsl --install --distribution Ubuntu
    ```

1. Restart your machine to complete the installation.

## Configure

### Set default distribution

1. Set Ubuntu as the default distribution:

    ```text
    wsl --set-default Ubuntu
    ```

1. Run Ubuntu in WSL version 2:

    ```text
    wsl --set-version Ubuntu 2
    ```

## References

- [Install Linux on Windows with WSL](https://docs.microsoft.com/en-us/windows/wsl/install)
- [Basic commands for WSL](https://docs.microsoft.com/en-us/windows/wsl/basic-commands)
