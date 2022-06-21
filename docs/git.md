# Git

## Install

```
$ sudo apt install git
```

## Configure

### Set name and email address

```
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```

> To keep your email address private, use your GitHub-provided no-reply email address.

### Store credentials on disk

```
$ git config --global credential.helper store
```

### Create personal access token

1. Go to "https://github.com/settings/tokens".

1. Click "Generate new token".

1. Add a note.

1. Set expiration to 90 days.

1. Select scopes "repo" and "workflow".

1. Click "Generate token".

1. Copy your token and store it somewhere secure.

> Once you have a token, you can enter it instead of your password when performing Git operations over HTTPS.

### Set default branch name

```
$ git config --global init.defaultBranch main
```

### Create merge commit on pull

```
$ git config --global pull.rebase false
```

### Convert CRLF line endings to LF on commit

```
$ git config --global core.autocrlf input
```

### Sign commits

1. Install GnuPG:

    ```
    $ sudo apt install gnupg
    ```

1. Generate a new GPG key pair:

    ```
    $ gpg --quick-generate-key "John Doe <johndoe@example.com>" rsa4096 sign 3m
    ```

    At the prompt, enter a strong passphrase and store it somewhere secure.

1. Get your GPG key ID:

    ```
    $ gpg --list-secret-keys --with-colons | grep '^sec:' | cut --delimiter ':' --fields 5 | tail --lines 1
    ```

1. Export your public GPG key:

    ```
    $ gpg --armor --export <GPG_KEY_ID>
    ```

    Copy your public GPG key, beginning with `-----BEGIN PGP PUBLIC KEY BLOCK-----` and ending with `-----END PGP PUBLIC KEY BLOCK-----`.

1. Go to "https://github.com/settings/keys" and add your public PGP key.

1. Use your GPG key to sign commits:

    ```
    $ git config --global user.signingkey <GPG_KEY_ID>
    ```

1. Sign commits by default:

    ```
    $ git config --global commit.gpgsign true
    ```

1. Set the value of environment variable `GPG_TTY` in your `.bashrc` file:

    ```
    $ printf '\nexport GPG_TTY=$(tty)\n' >> ~/.bashrc
    ```

    > It is important that this environment variable always reflects the output of the `tty` command.

## Reset

### Reset stored credentials

```
$ rm ~/.git-credentials
```

### Reset global configuration

```
$ rm ~/.gitconfig
```
