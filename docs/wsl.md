# Set up WSL development environment

A step-by-step guide on how to set up a WSL development environment.

## Install and configure WSL

1. Install WSL with the Ubuntu distribution by running this command in PowerShell or Command Prompt:

    ```
    > wsl --install --distribution Ubuntu
    ```

1. Restart your machine.

1. Set Ubuntu as your default distribution:

   ```
   > wsl --set-default Ubuntu
   ```

1. Open WSL:

    ```
    > wsl
    ```

1. Verify that you are running Ubuntu:

   ```
   $ lsb_release --all
   ```

## Install and configure Git

1. Install Git by running this command in WSL:

    ```
    $ sudo apt install git
    ```

1. Set your name and email address:

    ```
    $ git config --global user.name "John Doe"
    $ git config --global user.email johndoe@example.com
    ```

    To keep your email address private, use your GitHub-provided no-reply email address.

1. Store your credentials on disk:

    ```
    $ git config --global credential.helper store
    ```

1. Go to "https://github.com/settings/tokens" and generate a new personal access token with an expiration of 90 days and the "repo" scope.

    Once you have a token, you can enter it instead of your password when performing Git operations over HTTPS.

    For example, on the command line you would enter the following:

    ```
    $ git clone https://github.com/octocat/Hello-World.git
    Username: <your_username>
    Password: <your_token>
    ```

1. Set default branch to "main":

    ```
    $ git config --global init.defaultBranch main
    ```

1. Convert CRLF line endings to LF on commit:

   ```
   $ git config --global core.autocrlf input
   ```

1. Create merge commit when pulling from remote branch with new changes:

   ```
   $ git config --global pull.rebase false
   ```

1. Verify your Git configuration:

   ```
   $ git config --global --list
   ```

### Sign commits using GnuPG

1. Install GnuPG by running this command in WSL:

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

    It is important that this environment variable always reflects the output of the `tty` command.

## References

- [Git: Installing Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Git: First-time Git setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
- [GitHub: Creating a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
- [GitHub: Managing commit signature verification](https://docs.github.com/en/authentication/managing-commit-signature-verification)
- [GnuPG: How to manage your keys](https://www.gnupg.org/documentation/manuals/gnupg/OpenPGP-Key-Management.html)
- [GnuPG: Invoking GPG-AGENT](https://www.gnupg.org/documentation/manuals/gnupg/Invoking-GPG_002dAGENT.html)
