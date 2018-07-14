#
# Makefile
#
all: usage

usage:
	@echo ""
	@echo "usage: make [edit|build|run]"
	@echo ""

PGM=vector
#PGM=vision

edit e:
	vi $(PGM).go

edit-make em:
	vi Makefile

edit-readme er:
	vi README.md

build b: $(PGM).go
	go build -o $(PGM) $(PGM).go

run r:
	go run $(PGM).go

view v:
	eog *.jpg *.png

clean:
	rm -f $(PGM)

