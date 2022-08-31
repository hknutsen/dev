# WSL

This document provides instructions on how to install and configure Windows Subsystem for Linux (WSL).

## Install

```text
wsl --install --distribution Ubuntu
```

> This command will enable the required components, download the latest Linux kernel, and install the Ubuntu distribution for you.

## Configure

### Set Ubuntu as the default distribution

```text
wsl --set-default Ubuntu
```

### Run Ubuntu in WSL 2

```text
wsl --set-version Ubuntu 2
```

## Verify

### Verify default distribution and version

```text
> wsl --status
Default Distribution: Ubuntu
Default Version: 2
```

## References

- [Install Linux on Windows with WSL](https://docs.microsoft.com/en-us/windows/wsl/install)
- [Basic commands for WSL](https://docs.microsoft.com/en-us/windows/wsl/basic-commands)
