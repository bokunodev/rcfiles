export EDITOR=nano
export QT_QPA_PLATFORMTHEME=qt5ct

export CC=/usr/local/bin/gcc
export CXX=/usr/local/bin/g++
export CFLAGS="-s -fno-plt -flto=auto -march=native -O2"
export CXXFLAGS="$CFLAGS"

export GOPATH="$HOME/go"
export GOROOT="$HOME/.local/go"
export GOBIN="$GOPATH/bin"
export GOCACHE="$GOPATH/cache"
export GOMODCACHE="$GOPATH/pkg/mod"
export GOPROXY="https://proxy.golang.org,https://index.golang.org,direct"
export CGO_ENABLED=1

export PREFIX "$HOME/.local"

PATH="$PATH:$GOBIN"
PATH="$PATH:$PREFIX/bin"

export PATH
