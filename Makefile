SHELL = /bin/bash
.DEFAULT_GOAL := help

GIT_BRANCH = main
REP_HOME   = $(shell echo "$(shell pwd | rev | cut -d "/" -f1 | rev)")

ifeq ($(REP_HOME),matrix-script-shelltool)
GIT_HOME = $(shell echo "$(PWD)")
else
GIT_HOME = $(shell echo "$(PWD)/.action")
endif
-include .action/makefiles/*.mk
-include makefiles/*.mk