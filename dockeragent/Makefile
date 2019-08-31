SHELL = /bin/sh
.SUFFIXES:
.PHONY: all docker
DOCKER_COMPOSE = docker-compose

ifeq ($(OS),Windows_NT)
SHELL = cmd
endif

all: docker

docker: Dockerfile docker-compose.yml start.sh
	$(DOCKER_COMPOSE) build
