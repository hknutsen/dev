# WSL

This document contains instructions on how to install Windows Subsystem for Linux (WSL).

## Install

1. Open PowerShell as **administrator**.

1. Install WSL:

    ```cmd
    wsl --install
    ```

1. Restart your PC to complete the installation.

## Troubleshooting

### Unable to open browser

If you're unable to open a browser Window from WSL, install `wslu`:

```console
sudo apt-get install wslu
```
