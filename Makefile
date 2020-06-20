setup: \
	setup-zsh  \
	setup-nvim \
	setup-git  \
	setup-peco \
	setup-tmux

clean: \
	clean-zsh  \
	clean-nvim \
	clean-git  \
	clean-peco \
	clean-tmux

setup-zsh:
	ln -s $(shell pwd)/zsh/.zshrc  ~/.zshrc
	ln -s $(shell pwd)/zsh/.zshenv ~/.zshenv

clean-zsh:
	-rm ~/.zshrc
	-rm ~/.zshenv

setup-nvim:
	ln -s $(shell pwd)/nvim ~/.config

clean-nvim:
	-rm ~/.config/nvim

setup-git:
	ln -s $(shell pwd)/git/.gitconfig ~/.gitconfig

clean-git:
	-rm ~/.gitconfig

setup-peco:
	mkdir -p ~/.config/peco
	ln -s $(shell pwd)/peco/config.json ~/.config/peco/config.json

clean-peco:
	-rm ~/.config/peco/config.json
	-rmdir ~/.config/peco

setup-tmux:
	ln -s $(shell pwd)/tmux/.tmux.conf ~/.tmux.conf

clean-tmux:
	-rm ~/.tmux.conf
