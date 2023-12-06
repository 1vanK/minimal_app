[![](https://github.com/dviglo2d-learn/minimal_app/actions/workflows/main.yml/badge.svg)](https://github.com/dviglo2d-learn/minimal_app/actions)

# Шаблон приложения / Минимальное приложение

Единственным способом использования [движка Dviglo2D](https://github.com/dviglo2d/dviglo2d) является подключение его как поддиректории.

Подробнее о процессе сборки: <https://github.com/dviglo2d/dviglo2d/blob/main/docs/building.md>.

## Сборка в Windows

1. Создайте пустую папку
2. В ней создайте и запустите батник `1_download_repo.bat` для скачивания исходников шаблона

```
:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Путь к git.exe
set "PATH=c:\program files\git\bin"

:: Качаем репозиторий шаблона в папку repo
git clone https://github.com/dviglo2d-learn/minimal_app repo

:: Ждём нажатие Enter перед закрытием консоли
pause
```

3. В этой же папке создайте и запустите батник `2_download_engine.bat` для скачивания исходников движка

```
:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Путь к git.exe
set "PATH=c:\program files\git\bin"

:: Качаем репозиторий движка в папку engine
git clone https://github.com/dviglo2d/dviglo2d engine

:: Так как в движке могут произойти изменения, ломающие обратную совместимость,
:: то возвращаем состояние репозитория к определённой версии
git -C engine reset --hard cace521ff145a0020b291da4e98a9402eaf1b397

:: Ждём нажатие Enter перед закрытием консоли
pause
```

4. Создайте и запустите батник `3_cmake_vs.bat` для генерации проектов для Visual Studio

```
:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Указываем путь к cmake.exe. Без system32 в PATH ссылки на папки не создаются 
set "PATH=%SystemRoot%\system32;c:\programs\cmake\bin"

:: Создаём проекты для Visual Studio 2022 в папке build_vs, используя конфиг CMakeLists.txt из папки repo
cmake.exe repo -B build_vs -G "Visual Studio 17" -A x64

:: Ждём нажатие Enter перед закрытием консоли
pause
```

5. Создайте и запустите батник `4_build_vs.bat` для компиляции проектов

```
:: Меняем кодировку консоли на UTF-8
chcp 65001

:: Указываем путь к cmake.exe
set "PATH=c:\programs\cmake\bin"

:: Компилируем проекты в папке build_vs
cmake --build build_vs --config Debug
::cmake --build build_vs --config Release

:: Ждём нажатие Enter перед закрытием консоли
pause
```

Возможно, в батниках потребуется изменить пути.

Результат компиляции будет помещён в папку `build_vs/result`.

## Аналогичные sh-скрипты для Linux

`1_download_repo.sh`

```
#!/bin/sh

# Качаем репозиторий шаблона в папку repo
git clone https://github.com/dviglo2d-learn/minimal_app repo
```

`2_download_engine.sh`

```
#!/bin/sh

# Качаем репозиторий движка в папку engine
git clone https://github.com/dviglo2d/dviglo2d engine

# Так как в движке могут произойти изменения, ломающие обратную совместимость,
# то возвращаем состояние репозитория к определённой версии
git -C engine reset --hard cace521ff145a0020b291da4e98a9402eaf1b397
```

`3_cmake_gcc.sh`

```
#!/bin/sh

# Создаём проекты для GCC 13 в папке build_gcc, используя конфиг CMakeLists.txt из папки repo
cmake repo -B build_gcc -G "Unix Makefiles" \
    -D CMAKE_C_COMPILER=gcc-13 -D CMAKE_CXX_COMPILER=g++-13 \
    -D CMAKE_BUILD_TYPE=Debug
```

`4_build_gcc.sh`

```
#!/bin/sh

# Компилируем проекты в папке build_gcc
cmake --build build_gcc
```

## Добавление новых исходных файлов в проект

Создайте новые cpp- и hpp-файлы в папке `repo/src` и повторно запустите `3_cmake_vs.bat`. Удаление папки `build_vs` не требуется.
