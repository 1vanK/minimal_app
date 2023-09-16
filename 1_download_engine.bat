:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Путь к git.exe
set "PATH=c:\program files\git\bin"

:: Качаем репозиторий движка в папку engine
git clone https://github.com/dviglo2d/dviglo2d engine

:: Так как в движке могут произойти изменения, ломающие обратную совместимость,
:: то возвращаем состояние репозитория к определённой версии
git -C engine reset --hard 70442ca8843e056446644dd1b7670bfcaa54dbbd

:: Ждём нажатие Enter перед закрытием консоли
pause
