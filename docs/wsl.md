# WSL

This document contains instructions on how to install Windows Subsystem for Linux (WSL).

## Install

1. Open PowerShell.

1. Install WSL:

    ```cmd
    wsl --install
    ```

1. Restart your PC to complete the installation.

## Troubleshooting

### Unable to open browser

If you're unable to open a browser Window from WSL (e.g. using `az login` or `gh auth login`), install `wslu`:

```console
sudo apt-get install wslu
```
