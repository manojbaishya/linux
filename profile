# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# shellcheck shell=bash

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# ******************** GO *****************************
export GOPATH=/home/manoj/.go
export PATH=$GOPATH/bin:$PATH

# ******************* NODE ****************************
export NODEPREFIX=/home/manoj/.node
export PATH=$NODEPREFIX/bin:$PATH

# ****************** PYTHON ***************************
export PYVENVDIR=/home/manoj/.local/tools/dev/sdk/python/virtualenvs

# ****************** RUST ***************************
source "$HOME/.cargo/env"

# ****************** DEB-GET ***********************
export DEBGET_TOKEN=<REDACTED>


# ****************** JETBRAINS ***********************
# Added by Toolbox App
export PATH="$PATH:/home/manoj/.local/share/JetBrains/Toolbox/scripts"

# ****************** PNPM ***********************
# pnpm
export PNPM_HOME="/home/manoj/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# ****************** FLUTTER ***********************
export FLUTTER="/home/manoj/.local/tools/dev/sdk/flutter/runtime/flutter"
export PATH="$FLUTTER/bin:$PATH"
