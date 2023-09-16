:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Путь к git.exe
set "PATH=c:\program files\git\bin"

:: Удаляем лишние папки и файлы
:: https://git-scm.com/docs/git-clean
:: Двойной -ff требуется, чтобы удаляло также папку engine с вложенным репозиторием
:: https://github.com/capistrano/capistrano/issues/135
git clean -ffdx

:: Ждём нажатие Enter перед закрытием консоли
pause
