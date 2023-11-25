#!/bin/sh

# Качаем репозиторий движка в папку engine
git clone https://github.com/dviglo2d/dviglo2d engine

# Так как в движке могут произойти изменения, ломающие обратную совместимость,
# то возвращаем состояние репозитория к определённой версии
git -C engine reset --hard e5a25a2d60f1d9f2513b465e970b5fa228c4f08d
