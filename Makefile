#!/bin/make

all: init

install: init build-lang-server

build: syntax build-lang-server

init:
	npm install

dev:
	npm install --include=dev

syntax:
	./node_modules/.bin/syntaxdev build-plist --in grammars/cython.syntax.yaml --out syntaxes/cython.tmLanguage

build-lang-server:
	cd pyright/packages/vscode-pyright && npm run webpack