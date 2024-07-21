#!/bin/sh
src=../../project
dst=../../../lwd

rsync $src/game/Game.uproject $dst/game -avh --delete
rsync $src/game/Binaries $dst/game -avh -r --delete --exclude-from=exclude/ue_binaries
rsync $src/game/Config $dst/game -avh -r --delete
rsync $src/engine/Engine/Binaries $dst/engine/Engine -avh -r --delete --exclude-from=exclude/ue_binaries
rsync $src/engine/Engine/Config $dst/engine/Engine -avh -r --delete
rsync $src/engine/Engine/Content $dst/engine/Engine -avh -r --delete
rsync $src/engine/Engine/Shaders $dst/engine/Engine -avh -r --delete
rsync $src/engine/Engine/Plugins $dst/engine/Engine -avh -r --delete --exclude-from=exclude/ue_plugins