:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Путь к git.exe
set "PATH=c:\program files\git\bin"

:: Качаем репозиторий движка в папку engine
git clone https://github.com/dviglo2d/dviglo2d engine

:: Так как в движке могут произойти изменения, ломающие обратную совместимость,
:: то возвращаем состояние репозитория к определённой версии (06.06.2023)
git -C engine reset --hard 94d9196ed7a71b9a6463b33ec9604d3f21c6ec06

:: Ждём нажатие Enter перед закрытием консоли
pause
