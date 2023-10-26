init:
	cd ~ && mkdir -p "~/.config/tmux" & ln -s "~/.dotfiles/config/oh_my_tmux/.tmux.conf" "~/.config/tmux/tmux.conf"
tmux_sync:
	cp ~/.dotfiles/config/tmux/tmux.conf.local ~/.config/tmux/tmux.conf.local
terminal_sync:
	rm -rf ~/.config/alacritty/alacritty.yml
	ln -s ~/.dotfiles/config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
nvim_sync:
	rm -rf ~/.config/nvim/lua/custom
	ln -s ~/.dotfiles/config/nvim/custom ~/.config/nvim/lua/custom

.PHONY: init tmux_sync terminal_sync nvim_sync

