#! /bin/bash

config="""
# Set name and email address
git config --global user.name 'Henrik Knutsen'
git config --global user.email 46495473+hknutsen@users.noreply.github.com

# Set default branch name to main
git config --global init.defaultBranch main

# Auto setup remote on push
git config --global push.autoSetupRemote true

# Rebase on pull
git config --global pull.rebase true

# Prune on fetch
git config --global fetch.prune true

# Auto convert CRLF line endings to LF
git config --global core.autocrlf input

# Auto stash on rebase
git config --global rebase.autoStash

# Set VS Code as editor
git config --global core.editor 'code --wait'
"""

# Configure Git on WSL
echo "Configuring Git on WSL..."
eval "$config"
eval "git config --global credential.helper '/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe'"

# Configure Git for Windows
echo "Configuring Git for Windows..."
pwsh.exe -Command "$config"
pwsh.exe -Command "git config --global credential.helper manager"
