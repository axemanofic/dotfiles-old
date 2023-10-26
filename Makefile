init:
	cd ~ && mkdir -p "~/.config/tmux" & ln -s "~/.dotfiles/config/oh_my_tmux/.tmux.conf" "~/.config/tmux/tmux.conf"
tmux_sync:
	cp ~/.dotfiles/config/tmux/tmux.conf.local ~/.config/tmux/tmux.conf.local

.PHONY: init tmux_sync 

