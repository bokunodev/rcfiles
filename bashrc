#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

function __setup_myprompt() {
	local     red="\[\033[1;31m\]"
	local   green="\[\033[1;32m\]"
	local  yellow="\[\033[1;33m\]"
	local    blue="\[\033[1;34m\]"
	local magenta="\[\033[1;35m\]"
	local    cyan="\[\033[1;36m\]"
	local   white="\[\033[1;37m\]"
	local     end="\[\033[0m\]"

	local is_root="${cyan}λ"

	if [[ $EUID -eq 0 ]]; then
		is_root="${red}δ"
	fi

	local prompt="[${blue}\d${end}]-[${green}\t${end}]-[${magenta}\w${end}]\n"
	prompt="${prompt}\u${yellow}@${end}\H ${is_root} ${end}"
	echo "${prompt}"
}

PS1="$(__setup_myprompt)"

unset -f __setup_myprompt

shopt -s no_empty_cmd_completion

function copyrealpath() {
	if [ "${1}" = '' ] ; then
		echo 'one parameter, path to file required'
		exit 1
	fi
	realpath $1 | xclip -sel clip
}

alias ls='ls -hqp --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -A1'
alias ..='cd ..'
alias Y='yes Y'
alias ffplay='ffplay -autoexit -x 500'
alias make='remake'
