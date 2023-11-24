#!/bin/sh

# Удаляем лишние папки и файлы
# https://git-scm.com/docs/git-clean
# Двойной -ff требуется, чтобы удаляло также папку engine с вложенным репозиторием
# https://github.com/capistrano/capistrano/issues/135
git clean -ffdx
