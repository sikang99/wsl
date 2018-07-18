#
# Makefile
#
all: usage

usage:
	@echo ""
	@echo "usage: make [edit|build|run]"
	@echo ""

PGM=hello_service

edit e:
	vi src/$(PGM).bal

edit-make em:
	vi Makefile

edit-readme er:
	vi README.md

build b: src/$(PGM).bal
	ballerina build src/$(PGM).bal

run r:
	@echo ""
	@echo "make (run) [client|server]"
	@echo ""

run-server rs: src/$(PGM).bal
	ballerina run src/$(PGM).balx

run-client rc:
	curl http://localhost:9090/hello/sayHello

view v:
	eog *.jpg *.png

clean:
	rm -f $(PGM)

version:
	ballerina version

