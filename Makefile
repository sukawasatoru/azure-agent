SHELL = /bin/sh
.SUFFIXES:
.PHONY: all
TARGET_OS =

ifeq ($(OS),Windows_NT)
SHELL = cmd
TARGET_OS = -win
endif

all:
	$(MAKE) -C buildtools$(TARGET_OS) $@
	$(MAKE) -C dockeragent$(TARGET_OS) $@
