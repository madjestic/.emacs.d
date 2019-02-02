# .emacs.d
A Centaur-Emacs on a diet.

Make sure that the following binaries are present on your system:

```
/usr/local/bin/cquery
/usr/local/bin/clang
/usr/local/bin/clang++
/usr/local/bin/clangd
```
(or the equivalents inside `usr/bin/`)

- that is needed and used by lsp server

`C-u 0 M-x byte-recompile-directory` -> `~/.emacs.d/`
delete `~/.emacs.d/init-basic.elc` (there are some problems with `:bind` package, making compile to fail.

Enjoy!


