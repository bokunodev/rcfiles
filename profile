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
export CFLAGS='-s -Os -flto -pipe -fno-plt -march=native -mtune=native'
export CXXFLAGS="$CFLAGS"

export ENVIRONMENT="development"

# export GO111MODULE=""
# export GOARCH="amd64"
export GOBIN="$PREFIX/lib/go/bin"
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
export GOROOT="$PREFIX/lib/go"
# export GOSUMDB="sum.golang.org"
# export GOTMPDIR=""
export GOTOOLDIR="$PREFIX/lib/go/pkg/tool/linux_amd64"
# export GOVCS=""
# export GOVERSION="go1.18beta2"
# export GCCGO="gccgo"
# export GOAMD64="v1"
# export CGO_ENABLED="1"
# export GOMOD=""
# export GOWORK=""
export CGO_CFLAGS="-g -Os"
export CGO_CPPFLAGS=""
export CGO_CXXFLAGS="-g -Os"
export CGO_FFLAGS="-g -Os"
export CGO_LDFLAGS="-g -Os"
export PKG_CONFIG="pkg-config"
export GOGCCFLAGS="-fPIC -m64 -pthread -fno-caret-diagnostics -Qunused-arguments -fmessage-length=0 -fdebug-prefix-map=/tmp/go-build2529965917=/tmp/go-build -gno-record-gcc-switches"


append_path $PREFIX/bin
append_path $GOBIN
append_path "$PREFIX/lib/sciter-js/bin/linux/x64"
export PATH

unset -f append_path

export QT_QPA_PLATFORMTHEME=qt5ct

export MYSQL_DATABASE="diparaf"
export MYSQL_ADDRESS="127.0.0.1:3360"
export MYSQL_USER="user"
export MYSQL_PASSWORD="user"
