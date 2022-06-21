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

1. Set Ubuntu to run in WSL2 for improved performance:

   ```
   > wsl --set-version Ubuntu 2
   ```

1. Open WSL:

    ```
    > wsl
    ```

1. Verify that you are running Ubuntu:

   ```
   $ lsb_release --all
   ```
