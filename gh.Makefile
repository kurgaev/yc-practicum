default: help	# make without parameters
h: help			# short
help:
	clear
	@ echo 'make -f gh.Makefile N/command:'
	@ echo '	0 - yc resource-manager lists'
	@ echo '	install'
	@ echo '	auth'
	@ echo '	init'

0:
	yc resource-manager cloud list
	yc resource-manager folder list

install:
	curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
	sudo apt update
	sudo apt install gh git

auth:
	gh auth login

init:
	git init
	gh repo create