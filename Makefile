# TMUX
TMUX_OH_MY_TMUX=~/.dotfiles/config/oh_my_tmux
TMUX_DOTFILES=~/.dotfiles/config/tmux
TMUX_CONFIG=~/.config/tmux
# HOME
# TERMINAL
TERMINAL_DOTFILES=~/.dotfiles/config/alacritty
TERMINAL_CONFIG=~/.config/alacritty
# NVIM
NVIM_DOTFILES=~/.dotfiles/config/nvim
NVIM_CONFIG=~/.config/nvim
# ZSH
ZSH_DOTFILES=~/.dotfiles/config/zsh
ZSH_CUSTOM=~/.oh-my-zsh/custom
# GIT
GIT_DOTFILES=~/.dotfiles/config/gitconfig
GIT_CONFIG=~/.gitconfig

init:
	cd ~
tmux_sync:
	mkdir -p ${TMUX_CONFIG}
	rm -rf ${TMUX_CONFIG}/tmux.conf
	cp ${TMUX_OH_MY_TMUX}/.tmux.conf ${TMUX_CONFIG}/tmux.conf
	cp ${TMUX_DOTFILES}/tmux.conf.local ${TMUX_CONFIG}/tmux.conf.local
terminal_sync:
	rm -rf ${TERMINAL_CONFIG}/alacritty.toml
	cp ${TERMINAL_DOTFILES}/alacritty.toml ${TERMINAL_CONFIG}/alacritty.toml
	cp -r  ${TERMINAL_DOTFILES}/themes ${TERMINAL_CONFIG}/themes
nvim_sync:
	rm -rf ${NVIM_CONFIG}
	cp -r  ${NVIM_DOTFILES} ${NVIM_CONFIG}
ranger_sync:
	rm -rf ~/.config/ranger/rc.conf
	cp ~/.dotfiles/config/ranger/rc.conf ~/.config/ranger/rc.conf
zsh_sync:
	# custom
	rm -rf ${ZSH_CUSTOM}
	cp -r ${ZSH_DOTFILES}/custom ${ZSH_CUSTOM}
	# zshrc
	rm -rf ~/.zshrc
	cp  ${ZSH_DOTFILES}/zshrc ~/.zshrc
git_sync:
	rm -rf ${GIT_CONFIG}
	cp ${GIT_DOTFILES} ${GIT_CONFIG}



.PHONY: init tmux_sync terminal_sync nvim_sync ranger_sync zsh_sync

