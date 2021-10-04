plugins=(
	git
	golang
	vscode
	alias-tips
	zsh-autosuggestions
	adb
	rsync
	sudo
	docker
	copydir
	copyfile
	history
	common-aliases
)

source $ZSH/oh-my-zsh.sh


source $HOME/.nvm/nvm.sh
source $HOME/.gvm/scripts/gvm
export PATH=$HOME/go/bin:$PATH

eval "$(starship init zsh)"

function set_win_title(){
    echo -ne "\033]0; $USER:$PWD \007"
}
precmd_functions+=(set_win_title)

source ~/Apps/z/z.sh