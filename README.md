# vscode-cython

Cython Language Extension for VS Code

![alt text](https://github.com/ktnrg45/vs-code-cython/raw/master/assets/demo.gif "VS Code Cython Demo")

# Features

- Syntax Highlighting
- Static Syntax Checking
- Go to definitions

# About

This extension provides syntax highlighting and a Static Syntax checker for the Cython language.
Cython is a superset of Python with it's own C-styled syntax mixed with Python syntax.

The static checker is based on [Pyright](https://github.com/microsoft/pyright). and will only support Cython/Python syntax version 3.0 and above.

**Currently in beta. Bugs or other issues will likely be present.**

## Features to possibly add

These features would be nice to have but are not implemented.

- In-depth type analysis
- C headers analysis
- Cython C++ syntax parsing

# FAQ

- If no problems are reported will my code compile?

  > No. There are no guarantees that code will be compiled correctly

# Issues

Please report any issues in this repo only.

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
