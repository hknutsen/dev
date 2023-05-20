# GitHub CLI

This document contains instructions on how to install and configure GitHub CLI.

## Prerequisites

- [Install WSL](wsl.md)

## Install

1. Open Bash.

1. Install GitHub CLI:

    ```console
    sudo apt-get install gh
    ```

## Configure

### Enable tab completion

1. Install `bash-completion`:

    ```bash
    sudo apt install bash-completion
    ```

1. Add the following to `~/.bashrc`:

    ```bash
    eval "$(gh completion -s bash)"
    ```
