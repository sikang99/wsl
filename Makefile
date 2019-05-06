#
# Makefile by stoney.kang (sikang99@gmail.com)
# Linux setting for Windows 10
#
usage:
	@echo ""
	@echo "usage: make [e:dit|r:un|g:it|s:et]"
	@echo ""
# -------------------------------------------------------------------------------
edit e:
	@echo "make e:dit [m:ake|r:eadme]"

edit-make em:
	vi Makefile

edit-template et:
	vi Makefile.template

edit-readme er:
	vi README.md

edit-history eh:
	vi HISTORY.md
# -------------------------------------------------------------------------------
run r:
	@echo "make run [update:rp|upgrade:ra|copy:rc]"

run-upate rp:
	sudo apt update && sudo apt upgrade && sudo apt autoremove

run-upgrade ra:
	sudo -S apt-mark hold procps strace sudo
	sudo -S env RELEASE_UPGRADER_NO_SCREEN=1 do-release-upgrade

run-copy rc:
	ls $(DOWNLOAD)/WAVE/*
	cp $(DOWNLOAD)/WAVE/* doc/WAVE/

# -------------------------------------------------------------------------------
git g:
	@echo "make (git) [init|push:gu|pull:gs|clean]"

git-init gi:
	git config --global user.name "Stoney Kang"
	git config --global user.email sikang99@gmail.com
	git init
	git add README.md
	git commit -m "first commit"
	git remote add origin https://github.com/sikang99/wsl.git
	git remote set-url origin https://sikang99:****@github.com/sikang99/wsl.git
	git push -u origin master

git-login gl:
	git config --global user.email "sikang99@gmail.com"
	git config --global user.name "Stoney Kang"
	git config --global push.default matching
	#git config --global push.default simple
	git config credential.helper store

git-push gu:
	git add *.md Makefile .bashrc .vimrc doc/ install/ makefiles/
	git commit -m "update contents"
	git push

git-pull gs:
	git pull

git-clean gc:
	rm -f /home/stoney/.git/index.lock

# -------------------------------------------------------------------------------
set s:
	@echo "make set [git|display|docker]"

set-display sd:
	sudo apt install dbus-x11
	dbus-launch --exit-with-x11
	sudo dbus-uuidgen --ensure

set-docker sk:
	export DOCKER_HOST='tcp://0.0.0.0:2375'

# -------------------------------------------------------------------------------
