init:
	cd ~ && mkdir -p "~/.config/tmux" & ln -s "~/.dotfiles/config/oh_my_tmux/.tmux.conf" "~/.config/tmux/tmux.conf"
tmux_sync:
	cp ~/.dotfiles/config/tmux/tmux.conf.local ~/.config/tmux/tmux.conf.local
terminal_sync:
	rm -rf ~/.config/alacritty/alacritty.toml
	ln -s ~/.dotfiles/config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
	cp -r ~/.dotfiles/config/alacritty/themes ~/.config/alacritty/themes
nvim_sync:
	rm -rf ~/.config/nvim/lua/custom
	ln -s ~/.dotfiles/config/nvim/custom ~/.config/nvim/lua/custom
ranger_sync:
	rm -rf ~/.config/ranger/rc.conf
	ln -s ~/.dotfiles/config/ranger/rc.conf ~/.config/ranger/rc.conf
zsh_sync:
	# themes
	rm -rf ~/.oh-my-zsh/themes/dracula.zsh-theme
	ln -s ./config/oh_my_zsh_themes/dracula/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme

.PHONY: init tmux_sync terminal_sync nvim_sync ranger_sync zsh_sync

