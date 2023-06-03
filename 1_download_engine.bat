:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Путь к git.exe
set "PATH=c:\program files\git\bin"

:: Качаем репозиторий движка в папку engine
git clone https://github.com/dviglo2d/dviglo2d engine

:: Так как в движке могут произойти изменения, ломающие обратную совместимость,
:: то возвращаем состояние репозитория к определённой версии (03.06.2023)
git -C engine reset --hard 3bd3b260019dc6c3d476be62ad51fb21c7f6a2e6

:: Ждём нажатие Enter перед закрытием консоли
pause
