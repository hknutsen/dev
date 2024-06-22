# Setup

This document contains instructions on how to set up my dev environment on a new Windows machine.

## Setup tools

1. Open Windows PowerShell or Command Prompt.

1. Install development tools:

    ```console
    winget install Microsoft.WindowsTerminal Microsoft.PowerShell Git.Git Microsoft.VisualStudioCode Docker.DockerDesktop
    ```

1. Install WSL:

    ```console
    wsl --install
    ```

1. Restart your machine.

1. Open Ubuntu.

1. Create directory for Git repositories:

    ```bash
    mkdir gitrepos && cd gitrepos
    ```

1. Clone this repository:

    ```console
    git clone https://github.com/hknutsen/dev.git && cd dev
    ```

1. Configure WSL:

    ```bash
    ./scripts/configure_wsl.sh
    ```

1. Open this repository in VS Code:

    ```console
    code .
    ```

1. Login to VS Code Settings Sync with your GitHub account.

1. Login to Docker Desktop.

1. Login to Docker CLI:

    ```console
    docker login
    ```

## Setup utilities

1. Install 7-Zip:

    ```console
    winget install -e --id 7zip.7zip -s winget
    ```

## Setup other

1. Install Google Chrome:

    ```console
    winget install -e --id Google.Chrome -s winget
    ```

1. Install Spotify.

1. Install Steam:

    ```console
    winget install -e --id Valve.Steam -s winget
    ```

1. Install Discord:

    ```console
    winget install -e --id Discord.Discord -s winget
    ```
