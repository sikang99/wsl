#
# Makefile by stoney, sikang99@gmail.com
#
all: usage

usage:
	@echo ""
	@echo "usage: make [edit|build|run]"
	@echo ""

PGM=test


install-package pk:
	sudo pip install numpy scipy matplotlib
	sudo pip install pillow lxml jupyter protobuf
	sudo pip install tensorflow keras
	#sudo pip install tensorflow-gpu

edit e:
	vi $(PGM).py

run r:
	python $(PGM).py

