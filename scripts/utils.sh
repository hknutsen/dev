#!/bin/bash

set -eu

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

#######################################
# Check if a command exists.
# Arguments:
#   Command to check, a name or path.
# Returns:
#   1 if command does not exist.
#######################################
function check_cmd() {
  if [[ -z $(command -v "$1") ]]; then
    err "Command '$1' does not exist."
    exit 1
  fi
}
