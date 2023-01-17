# Git

This document contains instructions on how to install and configure Git for Windows and on Windows Subsystem for Linux (WSL).

## Install Git for Windows

1. Open PowerShell.

1. Install Git for Windows:

   ```cmd
   winget install -e --id Git.Git --source winget
   ```

1. Restart your PC to finish the installation.

## Configure Git for Windows

1. Open PowerShell.

1. Configure Git for Windows to use Git Credential Manager (GCM) as its credential helper:

   ```cmd
   git config --global credential.helper manager
   ```

   > **Note** GCM is included with Git for Windows.

## Install and configure Git on WSL

1. Open Bash.

1. Install Git on WSL:

   ```bash
   sudo apt install git
   ```

1. Configure Git on WSL to use GCM as its credential helper:

   ```bash
   git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"
   ```

## Set global options

Run the following commands in both PowerShell and Bash:

```bash
# Set name and email address
git config --global user.name "Henrik Knutsen"
git config --global user.email 46495473+hknutsen@users.noreply.github.com

# Set default branch name to main
git config --global init.defaultBranch main

# Auto setup remote on push
git config --global push.autoSetupRemote true

# Rebase on pull
git config --global pull.rebase true

# Prune on fetch
git config --global fetch.prune true

# Auto convert CRLF line endings to LF
git config --global core.autocrlf input
```
