# vscode-cython

Cython Language Extension for VS Code

# Features

- Syntax Highlighting
- Static Syntax Checking
- Go to definitions

# About

This extension provides syntax highlighting and a Static Syntax checker for the Cython language.
Cython is a superset of Python with it's own C-styled syntax mixed with Python syntax.

The static checker is based on Pyright.

**Currently a proof of concept. Bugs or other issues will likely be present.**

# Install from source

- Clone repo. For installation clone in the `<user home>/.vscode/extensions` folder.

- Ensure submodules are fetched with:

  ```
  git submodule update --init --recursive

  ```

- Install `npm`
- Run:
  ```
  make install
  ```

# Development

## Setup
To setup development environment:

- Follow the instructions for `Installing from source` (repo can be cloned anywhere on filesystem)

- Install development npm packages:

  ```
  make dev
  ```

- To rebuild lang-server and syntax file, Run:

  ```
  make build
  ```

##

## Syntax highlighting changes

Any changes should be made to `./grammars/cython.syntax.yaml`

The syntax file will need to be re-generated for VS Code to see changes.

To re-generate syntax file run:

```
make syntax
```
