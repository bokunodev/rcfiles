#!/usr/bin/bash

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
    fi
fi

append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

export EDITOR=nano
export PREFIX="$HOME/.local"

export GPGKEY=3113C8B3D2B68E9B

export AR=ar
export CC=gcc
export CXX=g++
export CFLAGS='-s -O2 -flto -pipe -fno-plt -march=native -mtune=native'
export CXXFLAGS="$CFLAGS"

export GOPATH="$HOME/go"
export GOCACHE="$GOPATH/cache"
export GOMODCACHE="$GOPATH/pkg/mod"

export GOROOT="$PREFIX/go"
export GOBIN="$GOROOT/bin"
export GOTOOLDIR="$GOROOT/pkg/tool/linux_amd64"

append_path $PREFIX/bin
append_path $GOBIN
export PATH

unset -f append_path

export QT_QPA_PLATFORMTHEME=qt5ct

export MYSQL_DATABASE=diparaf
export MYSQL_ADDRESS=[::1]:3360
export MYSQL_USER=user
export MYSQL_PASSWORD=user

export ENVIRONMENT=development
