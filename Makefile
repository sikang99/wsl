#
# Makefile by stoney.kang (sikang99@gmail.com)
# Linux setting for Windows 10
#
all: usage

usage:
	@echo ""
	@echo "usage: make [e:dit|r:un|g:it|s:et]"
	@echo ""

# -------------------------------------------------------------------------------
edit e:
	@echo ""
	@echo "make e:dit [m:ake|r:eadme]"
	@echo ""

edit-make em:
	vi Makefile

edit-template et:
	vi Makefile.template

edit-readme er:
	vi README.md

# -------------------------------------------------------------------------------
run r:
	@echo ""
	@echo "make run [update:rp|upgrade:ra|copy:rc]"
	@echo ""

run-upate ru:
	sudo apt update && sudo apt upgrade && sudo apt autoremove

run-upgrade ra:
	sudo -S apt-mark hold procps strace sudo
	sudo -S env RELEASE_UPGRADER_NO_SCREEN=1 do-release-upgrade

run-copy rc:
	ls $(DOWNLOAD)/WAVE/*
	cp $(DOWNLOAD)/WAVE/* doc/WAVE/

# -------------------------------------------------------------------------------
git g:
	@echo ""
	@echo "make (git) [init|push|pull|clean]"
	@echo ""

git-init gi:
	git config --global user.name "Stoney Kang"
	git config --global user.email sikang99@gmail.com
	git init
	git add README.md
	git commit -m "first commit"
	git remote add origin https://github.com/sikang99/wsl.git
	git remote set-url origin https://sikang99:****@github.com/sikang99/wsl.git
	git push -u origin master

git-push gp:
	git add README.md Makefile .bashrc .vimrc doc/ install/ makefiles/
	git commit -m "add some stuff including makefiles"
	git push -u origin master

git-sync gs:
	git pull

git-clean gc:
	rm -f /home/stoney/.git/index.lock

# -------------------------------------------------------------------------------
set s:
	@echo ""
	@echo "make set [git|display|docker]"
	@echo ""

set-display sd:
	sudo apt install dbus-x11
	dbus-launch --exit-with-x11
	sudo dbus-uuidgen --ensure

set-docker sk:
	export DOCKER_HOST='tcp://0.0.0.0:2375'

# -------------------------------------------------------------------------------
