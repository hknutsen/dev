# Git

This document contains instructions on how to install and configure Git for Windows and on Windows Subsystem for Linux (WSL).

## Prerequisites

## Install Git for Windows

Run the following command in PowerShell:

```shell
winget install -e --id Git.Git
```

## Install Git on WSL

Run the following command in Bash:

```shell
sudo apt install git
```

## Configure Git

Run the following commands in both PowerShell and Bash:

```shell
# Set name and email address
git config --global user.name "Henrik Knutsen"
git config --global user.email 46495473+hknutsen@users.noreply.github.com

# Set credential helper to cache (8 hours)
git config --global credential.helper "cache --timeout=28800"

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
