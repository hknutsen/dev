# Git

This document contains instructions on how to install and configure Git.

## Install

```bash
sudo dnf install git
```

## Configure

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

# Auto stash on rebase
git config --global rebase.autoStash
```

## Verify

```bash
git config --list --global
```
