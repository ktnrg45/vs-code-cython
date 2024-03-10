# vscode-cython

[Main Repository](https://github.com/ktnrg45/vs-code-cython)

[Cyright LSP Repository](https://github.com/ktnrg45/cyright)

## Cython Language Extension for VS Code

![VS Code Cython Demo](https://github.com/ktnrg45/vs-code-cython/raw/master/assets/demo.gif)

# Features

- Syntax highlighting
- Static syntax checking for C and CPP syntax
- Go to definitions
- Import resolver for .pxd files

# About

This extension provides syntax highlighting and a Static Syntax checker for the Cython language.
Cython is a superset of Python with it's own C-styled syntax mixed with Python syntax.

The static checker is based on [Pyright](https://github.com/microsoft/pyright) and will only support Cython/Python syntax version 3.0 and above.

This extension uses the configured Python interpreter/venv path from the `VS Code Python` extension.

# Limitations

- Only cimports that are `.pxd` files will be recognized
- The 'Pure Python' syntax is not supported
- Directives will not be considered. This is because directives can be set in multiple places such as in a `setup.py` file and cannot be analyzed statically
- Pyright options are not supported. i.e. `pyrightconfig.json`

# Possible features
These features would be nice to have but are not implemented.

- Strict type analysis
- C headers analysis / inline C code analysis
- Typings file generation
- Python interaction highlighting

# FAQ

- If no problems are reported will my code compile?

  > No. There are no guarantees that code will be compiled correctly

# Issues

Please report any issues in this repo.

# Installing

## Install with VS Code

Install normally through the extensions tab.

## Install from source

- Clone repo. For installation clone in the `<user home>/.vscode/extensions` folder.

- Ensure submodules are fetched with:

  ```
  git submodule update --init --recursive
  ```

- Install `npm`

### Building source
- To build extension run:
  ```
  npm install --include=dev
  npm run build:extension
  ```
### Building vsix package

Alternatively, a vsix package can be built:
```
npm install vsce
npx vsce package
code --install-extension vscode-cython-<version>.vsix
```

# Development

## Setup

To setup development environment:

- Follow the instructions for `Installing from source` (repo can be cloned anywhere on filesystem) (build step can be skipped).

- Install development npm packages:

  ```
  npm install --include=dev
  ```

- To rebuild lang-server and syntax file, Run:

  ```
  npm run build:extension:dev
  ```

### Debugging

Run the `Watch extension` task. This can be done in vscode by clicking `view->Command Palette` and then selecting `Tasks: Run Build Task` and then selecting `Watch extension`.

This will build the language server and the source code will be watched for changes

You can then run the launch task: `Extension` which will launch the extension in debug mode.

After the extension has been launched run the launch task `Attach server`, which will attach the debugger to the extension.

## Syntax highlighting changes

Any changes should be made to `./grammars/cython.syntax.yaml`

The syntax file will need to be re-generated for VS Code to see changes.

To re-generate syntax file run:

```
npm run build:syntax
```

## Language Server (Cyright) Development

Pull requests should be created under the [Cyright Repository](https://github.com/ktnrg45/cyright).

There is a 'Watch Extension' task to aid in development.
The language server can be debugged by launching the 'Extension' launch target and then launching the 'Attach Server' target.
