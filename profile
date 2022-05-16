#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export QT_QPA_PLATFORMTHEME=qt5ct

export CFLAGS="-s -flto -fno-plt -mtune=native -march=native -O2"

export GOBIN="$HOME/.local/go/bin"
export GOCACHE="$HOME/go/cache"
export GOMODCACHE="$HOME/go/pkg/mod"
export GOPATH="$HOME/go"
export GOROOT="$HOME/.local/go"
export CGO_ENABLED="1"

export PNPM_HOME="$HOME/.local/share/pnpm"

export PREFIX="$HOME/.local"

PATH="$PATH:$GOBIN"
PATH="$PATH:$PREFIX/bin"
PATH="$PATH:$PNPM_HOME"

export PATH
