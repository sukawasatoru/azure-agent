SHELL = /bin/sh
.SUFFIXES:
.PHONY: all docker
DOCKER_COMPOSE = docker-compose

ifeq ($(OS),Windows_NT)
SHELL = cmd
endif

all: docker

docker: Dockerfile docker-compose.yml
	$(DOCKER_COMPOSE) build
