if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

set -x EDITOR nano
set -x QT_QPA_PLATFORMTHEME qt5ct

set -x CC       /usr/local/bin/gcc
set -x CXX      /usr/local/bin/g++
set -x CFLAGS   "-s -fno-plt -flto=auto -march=native -O2"
set -x CXXFLAGS "$CFLAGS"

set -x GOPATH      "$HOME/go"
set -x GOROOT      "$HOME/.local/go"
set -x GOBIN       "$GOPATH/bin"
set -x GOCACHE     "$GOPATH/cache"
set -x GOMODCACHE  "$GOPATH/pkg/mod"
set -x GOPROXY     "https://proxy.golang.org,https://index.golang.org,direct"
set -x CGO_ENABLED 1

set -x PREFIX "$HOME/.local"

fish_add_path $GOBIN
fish_add_path $PREFIX/bin

# pnpm
set -gx PNPM_HOME "/home/boku/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
