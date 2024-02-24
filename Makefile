# TMUX
TMUX_OH_MY_TMUX=~/.dotfiles/config/oh_my_tmux
TMUX_DOTFILES=~/.dotfiles/config/tmux
TMUX_CONFIG=~/.config/tmux
# HOME
# TERMINAL
TERMINAL_DOTFILES=~/.dotfiles/config/alacritty
TERMINAL_CONFIG=~/.config/alacritty
# NVIM
NVIM_DOTFILES=~/.dotfiles/config/nvim/custom
NVIM_CUSTOM=~/.config/nvim/lua/custom
# ZSH
ZSH_DOTFILES=~/.dotfiles/config/zsh
ZSH_CUSTOM=~/.oh-my-zsh/custom

init:
	cd ~
	mkdir -p ${TMUX_CONFIG}
	ln -s ${TMUX_OH_MY_TMUX}/.tmux.conf ${TMUX_CONFIG}/tmux.conf
tmux_sync:
	cp ${TERMINAL_DOTFILES}/tmux.conf.local ${TMUX_CONFIG}/tmux.conf.local
terminal_sync:
	rm -rf ${TERMINAL_CONFIG}/alacritty.toml
	ln -s  ${TERMINAL_DOTFILES}/alacritty.toml ${TERMINAL_CONFIG}/alacritty.toml
	cp -r  ${TERMINAL_DOTFILES}/themes ${TERMINAL_CONFIG}/themes
nvim_sync:
	rm -rf ${NVIM_CUSTOM}
	ln -s  ${NVIM_DOTFILES} ${NVIM_CUSTOM}
ranger_sync:
	rm -rf ~/.config/ranger/rc.conf
	ln -s ~/.dotfiles/config/ranger/rc.conf ~/.config/ranger/rc.conf
zsh_sync:
	# custom
	rm -rf ${ZSH_CUSTOM}
	ln -s ${ZSH_DOTFILES}/custom ${ZSH_CUSTOM}
	# zshrc
	rm -rf ~/.zshrc
	ln -s  ${ZSH_DOTFILES}/zshrc ~/.zshrc


.PHONY: init tmux_sync terminal_sync nvim_sync ranger_sync zsh_sync

