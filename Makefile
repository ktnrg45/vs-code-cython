#!/bin/make

all: init

install: init build-lang-server

build: syntax build-lang-server

init:
	npm install

dev:
	npm install --include=dev

syntax:
	mkdir -p syntaxes && ./node_modules/.bin/syntaxdev build-plist --in grammars/cython.syntax.yaml --out syntaxes/cython.tmLanguage

build-lang-server:
	cd cyright/packages/vscode-pyright && npm run webpack