# Git

This document contains instructions on how to install, configure and authenticate Git.

## Install

```bash
sudo apt install git
```

## Configure

### Set name and email address

```bash
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```

### Store credentials in cache

Store credentials in cache for 28800 seconds (8 hours):

```bash
git config --global credential.helper 'cache --timeout 28800'
```

### Set default branch name

```bash
git config --global init.defaultBranch main
```

### Auto setup remote on push

```bash
git config --global push.autoSetupRemote true
```

### Rebase on pull

```bash
git config --global pull.rebase true
```

### Prune on fetch

```bash
git config --global fetch.prune true
```

### Auto convert CRLF line endings to LF

```bash
git config --global core.autocrlf input
```

## Authenticate

### GitHub

1. [Install GitHub CLI](https://github.com/cli/cli/blob/trunk/docs/install_linux.md).

1. Authenticate to GitHub:

   ```bash
   gh auth login -w -p https
   ```
