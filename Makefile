#!/bin/make

all: syntax

init:
	npm install --include=dev

syntax:
	./node_modules/.bin/syntaxdev build-plist --in grammars/cython.syntax.yaml --out syntaxes/cython.tmLanguage

build:
	cd pyright/packages/vscode-pyright && npm run webpack