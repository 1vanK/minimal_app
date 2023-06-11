:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Путь к git.exe
set "PATH=c:\program files\git\bin"

:: Качаем репозиторий движка в папку engine
git clone https://github.com/dviglo2d/dviglo2d engine

:: Так как в движке могут произойти изменения, ломающие обратную совместимость,
:: то возвращаем состояние репозитория к определённой версии (11.06.2023)
git -C engine reset --hard 6d2d33e3873a1d866a4850864f3561e202b60b1c

:: Ждём нажатие Enter перед закрытием консоли
pause
