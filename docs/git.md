# Git

This document contains instructions on how to install and configure Git for Windows and on Windows Subsystem for Linux (WSL).

## Install Git for Windows

1. Open PowerShell.

1. Install Git for Windows:

   ```shell
   winget install -e --id Git.Git
   ```

1. Restart your PC to finish installation.

## Configure Git for Windows

1. Open PowerShell.

1. Set Git Credential Manager (GCM) as credential helper:

   ```shell
   git config --global credential.helper manager
   ```

   > **Note** GCM is included with Git for Windows.

## Install and configure Git on WSL

1. Open Bash.

1. Install Git on WSL:

   ```shell
   sudo apt install git
   ```

1. Set GCM as credential helper:

   ```shell
   git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"
   ```

## Common configurations

> **Note** The following configurations must be set for both Git for Windows and on WSL.

1. Set name and email address:

   ```shell
   git config --global user.name "Henrik Knutsen"
   git config --global user.email 46495473+hknutsen@users.noreply.github.com
   ```

1. Set default branch name to `main`:

   ```shell
   git config --global init.defaultBranch main
   ```

1. Auto setup remote on push:

   ```shell
   git config --global push.autoSetupRemote true
   ```

1. Rebase on pull:

   ```shell
   git config --global pull.rebase true
   ```

1. Prune on fetch:

   ```shell
   git config --global fetch.prune true
   ```

1. Auto convert CRLF line endings to LF:

   ```shell
   git config --global core.autocrlf input
   ```
   
   > **Note** Taken from [Resolving Git line ending issues in WSL (resulting in many modified files)](https://code.visualstudio.com/docs/remote/troubleshooting#_resolving-git-line-ending-issues-in-wsl-resulting-in-many-modified-files).
