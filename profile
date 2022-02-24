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

export AR='ar'
export CC='gcc'
export CXX='g++'
export CFLAGS='-s -O2 -flto -pipe -fno-plt -march=native -mtune=native'
export CXXFLAGS="$CFLAGS"

# export GO111MODULE=""
# export GOARCH="amd64"
export GOBIN="$HOME/go/bin"
export GOCACHE="$HOME/go/cache"
# export GOENV=""
# export GOEXE=""
# export GOEXPERIMENT=""
# export GOFLAGS=""
# export GOHOSTARCH="amd64"
# export GOHOSTOS="linux"
# export GOINSECURE=""
export GOMODCACHE="$HOME/go/pkg/mod"
# export GONOPROXY=""
# export GONOSUMDB=""
# export GOOS="linux"
export GOPATH="$HOME/go"
# export GOPRIVATE=""
# export GOPROXY="https://proxy.golang.org,direct"
export GOROOT="$HOME/.local/go"
# export GOSUMDB="sum.golang.org"
# export GOTMPDIR=""
# export GOTOOLDIR=""
# export GOVCS=""
# export GOVERSION="go1.18rc1"
# export GCCGO="gccgo"
# export GOAMD64="v1"
# export AR="ar"
# export CC="gcc"
# export CXX="g++"
export CGO_ENABLED="1"
# export GOMOD=""
# export GOWORK=""
# export CGO_CFLAGS="-g -O2"
# export CGO_CPPFLAGS=""
# export CGO_CXXFLAGS="-g -O2"
# export CGO_FFLAGS="-g -O2"
# export CGO_LDFLAGS="-g -O2"
# export PKG_CONFIG="pkg-config"
export GOGCCFLAGS="-fPIC -m64 -pthread -fmessage-length=0 -fdebug-prefix-map=/tmp/go-build2947916142=/tmp/go-build -gno-record-gcc-switches"

append_path $PREFIX/bin
append_path $GOBIN
export PATH

unset -f append_path

export QT_QPA_PLATFORMTHEME=qt5ct

export MYSQL_DATABASE='diparaf'
export MYSQL_ADDRESS='[::1]:3360'
export MYSQL_USER='user'
export MYSQL_PASSWORD='user'

export ENVIRONMENT='development'
