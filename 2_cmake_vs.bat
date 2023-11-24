:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Указываем путь к cmake.exe. Без system32 в PATH ссылки на папки не создаются 
set "PATH=%SystemRoot%\system32;c:\programs\cmake\bin"

:: Создаём проекты для Visual Studio 2022 в папке build_vs, используя конфиг CMakeLists.txt из папки game
cmake.exe game -B build_vs -G "Visual Studio 17" -A x64

:: Ждём нажатие Enter перед закрытием консоли
pause
