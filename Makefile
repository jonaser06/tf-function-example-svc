SHELL = /bin/bash
.DEFAULT_GOAL := help

GIT_BRANCH = main
REP_HOME   = $(shell echo "$(shell pwd | rev | cut -d "/" -f1 | rev)")

ifeq ($(REP_HOME),scripts-cicd)
GIT_HOME = $(shell echo "$(PWD)")
else
GIT_HOME = $(shell echo "$(PWD)/.action")
endif

-include makefiles/*.mk
-include .action/makefiles/*.mk