# Setup

This document contains instructions on how to set up my dev environment on a new Windows machine.

## Setup tools

1. Install WSL:

    ```console
    wsl --install
    ```

1. Install Windows Terminal:

    ```console
    winget install -e --id Microsoft.WindowsTerminal -s winget
    ```

1. Install Git:

    ```console
    winget install -e --id Git.Git -s winget
    ```

1. Install VS Code:

    ```console
    winget install -e --id Microsoft.VisualStudioCode -s winget
    ```

1. Install Docker Desktop:

   ```console
   winget install -e --id Docker.DockerDesktop -s winget
   ```

1. Restart your machine.

1. Install Git on WSL:

    ```console
    sudo apt update && sudo apt install git
    ```

1. [Configure Git](git.md).

1. Clone this repository:

    ```console
    git clone https://github.com/hknutsen/dev.git
    ```

1. Open this repository in VS Code:

    ```console
    code dev
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
