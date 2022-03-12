setup: \
	setup-git  \
	setup-peco \
	setup-vscode

clean: \
	clean-git  \
	clean-peco \
	clean-vscode

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

setup-vscode:
	mkdir -p ~/.config/Code/User
	ln -s $(shell pwd)/vscode/settings.json ~/.config/Code/User/settings.json
	ln -s $(shell pwd)/vscode/keybindings.json ~/.config/Code/User/keybindings.json

clean-vscode:
	-rm ~/.config/Code/User/settings.json
	-rm ~/.config/Code/User/keybindings.json
