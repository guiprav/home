alias reload="source ~/.bashrc"
alias ls="ls -h --color=always"
alias ll="ls -l"
alias la="ls -la"
alias rmr="rm -r"
alias rmrf="rm -rf"
alias rrless="recycle-less"
alias xclips="xclip -selection clipboard"
alias lock="gnome-screensaver-command -l"
alias gg="grab"
alias rr="recycle"
alias rre="recycle-edit-files"
alias rreb="recycle-edit-buffer"
alias rrc="recycle-cat-files"
alias lsgg="list-grabbed"
alias rmgg="rm-grabbed"
alias ack="ack --color"
alias cless="less -R"
alias pandora="ssh 50.56.218.106"
export EDITOR=vim
export PATH="$HOME/bin:$PATH"
function rd() {
	cd $(recycle $1)
}
function mkcd() {
	mkdir -p "$@" && cd "$@"
}
function bin() {
	nearest "bin/$1" -e ${@:2}
}
