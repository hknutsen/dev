# Git

This document contains instructions on how to install, configure and authenticate Git.

## Prerequisites

- [Install WSL](wsl.md)
- [Install GitHub CLI](gh.md)

## Install

1. Open Bash.

1. Install Git:

   ```console
   sudo apt-get install git
   ```

## Configure

1. Open Bash.

1. Set name and email address:

    ```console
    git config --global user.name "Henrik Knutsen"
    git config --global user.email 46495473+hknutsen@users.noreply.github.com
    ```

1. Set default branch name to main:

    ```console
    git config --global init.defaultBranch main
    ```

1. Auto setup remote on push:

    ```console
    git config --global push.autoSetupRemote true
    ```

1. Rebase on pull:

    ```console
    git config --global pull.rebase true
    ```

1. Prune on fetch:

    ```console
    git config --global fetch.prune true
    ```

1. Auto stash on rebase:

    ```console
    git config --global rebase.autoStash true
    ```

## Authenticate

1. Open Bash.

1. Authenticate Git using GitHub CLI:

    ```console
    $ gh auth login
    ? What account do you want to log into? GitHub.com
    ? What is your preferred protocol for Git operations? HTTPS
    ? Authenticate Git with your GitHub credentials? Yes
    ? How would you like to authenticate GitHub CLI? Login with a web browser
    ```
