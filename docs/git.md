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

## Reset

### Reset stored credentials

```
$ rm ~/.git-credentials
```

### Reset global configuration

```
$ rm ~/.gitconfig
```
