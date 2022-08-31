# Git

This document provides instructions on how to install and configure Git for Windows and on Windows Subsystem for Linux (WSL).

## Prerequisites

- [Install WSL](./wsl.md)

## Install Git for Windows

1. Download and install [Git for Windows](https://gitforwindows.org/) with the default options.

1. Restart your machine to complete the installation.

## Configure Git for Windows

### Configure name and email address

1. Open PowerShell.

1. Configure Git for Windows to use your GitHub name and email address:

    ```text
    git config --global user.name 'Henrik Knutsen'
    git config --global user.email '46495473+hknutsen@users.noreply.github.com'
    ```

    > To keep your email address private, use your GitHub-provided no-reply email address.

### Configure credential helper

1. Open PowerShell.

1. Configure Git for Windows to use Git Credential Manager (GCM) as its credential helper:

    ```text
    git config --global credential.helper manager-core
    ```

    > GCM is included with Git for Windows.

1. Clone a GitHub repository using HTTPS, for example this repo:

    ```text
    git clone https://github.com/hknutsen/dev.git
    ```

1. When prompted to sign in to GitHub, click "Sign in with your browser".

1. Enter your GitHub username and password in the browser window and click "Sign in".

    > GCM will store your GitHub credentials in the Windows Credential Manager.

### Enable GPG signing of all commits

#### Install Gpg4win

1. Download and install [Gpg4win](https://www.gpg4win.org/) with the default options.

1. Restart your machine to complete the installation.

#### Generate GPG key

1. Open PowerShell.

1. Generate a new GPG key pair using the same name and email address as Git for Windows:

    ```text
    gpg --quick-generate-key 'Henrik Knutsen <46495473+hknutsen@users.noreply.github.com>' rsa4096 sign 1y
    ```

    At the prompt, enter a strong passphrase and store it somewhere secure, for example a password manager.

1. List your GPG key pairs:

    ```text
    gpg --list-secret-keys --keyid-format=long
    ```

1. From the list of GPG key pairs, copy the long form of the GPG key ID you'd like to use. In this example, the GPG key ID is `A4A699B2E69D765B`:

    ```text
    C:\Users\henrik.knutsen\AppData\Roaming\gnupg\pubring.kbx
    ---------------------------------------------------------
    sec   rsa4096/A4A699B2E69D765B 2022-08-13 [SC] [expires: 2023-08-13]
        1198EC25DCED809C32DDFAF1A4A699B2E69D765B
    uid                 [ultimate] Henrik Knutsen <46495473+hknutsen@users.noreply.github.com>
    ```

1. Export your public GPG key:

    ```text
    gpg --armor --export <GPG_KEY_ID>
    ```

1. Copy your public GPG key, beginning with `-----BEGIN PGP PUBLIC KEY BLOCK-----` and ending with `-----END PGP PUBLIC KEY BLOCK-----`.

1. Go to "https://github.com/settings/keys" and add your public GPG key.

1. Configure Git for Windows to use your signing key:

    ```text
    git config --global user.signingkey <GPG_KEY_ID>
    ```

1. Configure Git for Windows to sign all commits using GPG:

    ```text
    git config --global commit.gpgsign true
    ```

1. Configure Git for Windows to use Gpg4win as its GPG program:

    ```text
    git config --global gpg.program 'C:\Program Files (x86)\GnuPG\bin\gpg.exe'
    ```

1. The next time you commit, you will be prompted to enter your passphrase in order to sign your commit.

### Disable auto-convert of line endings to CRLF

1. Open PowerShell.

1. Configure Git for Windows to not auto-convert line endings to CRLF:

    ```text
    git config --global core.autocrlf input
    ```

   > This prevents Git for Windows from converting line endings to CRLF when cloning a repo, which can result in Git on WSL [reporting all files as modified](https://code.visualstudio.com/docs/remote/troubleshooting#_resolving-git-line-ending-issues-in-containers-resulting-in-many-modified-files).

## Install and configure Git on WSL

1. Open Bash.

1. Download and install Git:

    ```bash
    sudo apt-get install git
    ```

1. Configure Git on WSL to use the same name and email address as Git for Windows:

    ```text
    git config --global user.name 'Henrik Knutsen'
    git config --global user.email '46495473+hknutsen@users.noreply.github.com'
    ```

1. Configure Git on WSL to use GCM as its credential helper, so that it can use the same credentials as Git for Windows:

    ```text
    git config --global credential.helper '/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager-core.exe'
    ```

1. Configure Git on WSL to use Gpg4win as its GPG program, so that it can use the same GPG key as Git for Windows:

    ```text
    git config --global gpg.program '/mnt/c/Program Files (x86)/GnuPG/bin/gpg.exe'
    ```

1. Configure Git on WSL to use the same GPG key as Git for Windows:

    ```text
    git config --global user.signingkey <GPG_KEY_ID>
    ```

1. Configure Git on WSL to sign all commits using GPG:

    ```text
    git config --global commit.gpgsign true
    ```

1. Configure Git on WSL to auto-convert line endings to LF on commit:

    ```text
    git config --global core.autocrlf input
    ```

## Optional configuration

The following configurations are optional, and apply to both Git for Windows and on WSL.

### Set default branch name

Set `main` as the default branch name:

```text
git config --global init.defaultBranch main
```

### Auto setup remote on push

Assume `--set-upstream` on default push when no upstream tracking exists for the current branch:

```text
git config --global push.autoSetupRemote true
```

### Rebase on pull

Rebase the current branch on top of the upstream branch after fetching. If there is a remote-tracking branch corresponding to the upstream branch and the upstream branch was rebased since last fetched, the rebase uses that information to avoid rebasing non-local changes:

```text
git config --global pull.rebase true
```

### Prune on fetch

Before fetching, remove any remote-tracking references that no longer exist on the remote:

```text
git config --global fetch.prune true
```
