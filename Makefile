#
# Makefile by stoney.kang (sikang99@gmail.com)
# Linux setting for Windows 10
#
all: usage

usage:
	@echo ""
	@echo "usage: make [e:dit|r:un]"
	@echo ""

edit e:
	@echo ""
	@echo "make e:dit [m:ake|r:eadme]"
	@echo ""

edit-make em:
	vi Makefile

edit-readme er:
	vi README.md

run r:
	@echo ""
	@echo "make run [update:rp|upgrade:ra|git:rg]"
	@echo ""

run-upate rp:
	sudo apt-get update
	sudo apt-get upgrade

run-upgrade ra:
	sudo -S apt-mark hold procps strace sudo
	sudo -S env RELEASE_UPGRADER_NO_SCREEN=1 do-release-upgrade

run-git rg:
	git add README.md Makefile .bashrc
	git commit -m "add .bashrc"
	git push -u origin master

set-git sg:
	git config --global user.name "Stoney Kang"
	git config --global user.email sikang99@gmail.com
	git init
	git add README.md
	git commit -m "first commit"
	git remote add origin https://github.com/sikang99/wsl.git

set-display sd:
	sudo apt install dbus-x11
	dbus-launch --exit-with-x11
	sudo dbus-uuidgen --ensure

set-docker sk:
	export DOCKER_HOST='tcp://0.0.0.0:2375'

