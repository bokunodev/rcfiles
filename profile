export EDITOR="nano"
export QT_QPA_PLATFORMTHEME="qt5ct"

export CC="/usr/bin/clang"
export CXX="/usr/bin/clang++"
export CFLAGS="-s -fno-plt -flto=auto -march=native -Os"
export CXXFLAGS="$CFLAGS"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export GOCACHE="$GOPATH/cache"
export GOMODCACHE="$GOPATH/pkg/mod"
export GOPROXY="https://proxy.golang.org,https://index.golang.org,direct"
export CGO_ENABLED=1

export PREFIX "$HOME/.local"

PATH="$PATH:$GOBIN"
PATH="$PATH:$PREFIX/bin"

export PATH

. "$HOME/.cargo/env"
