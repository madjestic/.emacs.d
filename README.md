# .emacs.d
A lean and fast emacs setup.

## Features supported:

* C++: autocomplete based on lsp-mod, clang, irony, cquery showing functional sigs.
* Clean and modern configuration structure:
```
|_init.el - theme, init chain.
	|_site-lisp/init-custom.el  - Custom variables and functions.
	|_site-lisp/init-package.el - Emacs Package management configurations.
	|_site-lisp/init-basic.el   - Basic configuration.
	|_site-lisp/init-ui.el      - UI configuration.
	|_site-lisp/init-lsp        - Language Server Protocol configurations.
	|_site-lisp/init-company.el - Company/autocomplete configuration.
	|_site-lisp/init-c.el       - C/C++ configuration.
	|_site-lisp/init-vcs.el     - Git/VCS configuration.
```
* Inspired by ![Cantaur Emacs](https://github.com/seagle0128/.emacs.d)

## Installation:

Make sure that the following binaries are present on your system:

```
/usr/local/bin/cquery
/usr/local/bin/clang
/usr/local/bin/clang++
/usr/local/bin/clangd
```
(or the equivalents inside `usr/bin/`)
- that is needed and used by lsp server

```bash
$ cd ~
$ git clone https://github.com/madjestic/.emacs.d
$ emacs
```
- that should start the update process.

`C-u 0 M-x byte-recompile-directory` -> `~/.emacs.d/`
delete `~/.emacs.d/init-basic.elc` (there are some problems with `:bind` package, making compile to fail.

Enjoy!


