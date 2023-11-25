#!/bin/sh

# Качаем репозиторий движка в папку engine
git clone https://github.com/dviglo2d/dviglo2d engine

# Так как в движке могут произойти изменения, ломающие обратную совместимость,
# то возвращаем состояние репозитория к определённой версии
git -C engine reset --hard 4e39eb414d883c40c9ac6be0814e5e46bb2cd5cd
