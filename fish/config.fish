if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

set -gx EDITOR               "nano"
set -gx QT_QPA_PLATFORMTHEME "qt5ct"

set -gx CC       "/usr/bin/clang"
set -gx CXX      "/usr/bin/clang++"
set -gx CFLAGS   "-s -fno-plt -flto=auto -march=native -Os"
set -gx CXXFLAGS "$CFLAGS"

set -gx GOROOT      "/usr/local/go"
set -gx GOPATH      "$HOME/go"
set -gx GOBIN       "$GOPATH/bin"
set -gx GOCACHE     "$GOPATH/cache"
set -gx GOMODCACHE  "$GOPATH/pkg/mod"
set -gx GOPROXY     "https://proxy.golang.org,https://index.golang.org,direct"
set -gx CGO_ENABLED 1

set -gx PREFIX "$HOME/.local"

fish_add_path "$GOBIN"
fish_add_path "$PREFIX/bin"
fish_add_path "$HOME/.cargo/bin"

# pnpm
set -gx PNPM_HOME "/home/boku/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
