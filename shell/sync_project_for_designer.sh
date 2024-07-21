#!/bin/sh
# kun 2024.07.21

#--verbose, -v            increase verbosity
#--no-OPTION              ex: --no-v, --no-r, etc
#--recursive, -r          recurse into directories
#--archive, -a            archive mode is -rlptgoD (no -A,-X,-U,-N,-H)
#--delete                 delete extraneous files from dest dirs
#--delete-excluded        also delete excluded files from dest dirs
#--prune-empty-dirs, -m   prune empty directory chains from file-list
#--include
#--include-from
#--exclude

src=../../../leeway/project
dst=../../../leeway-designer

mkdir $dst/engine
mkdir $dst/game

rsync $src/game/Game.uproject $dst/game -v -a -h -m -r --progress --update --delete
rsync $src/game/Binaries $dst/game -v -a -h -m -r --progress --update --delete --delete-excluded --include="*/" --include-from=include/ue_binaries --exclude="*"
rsync $src/game/Config $dst/game -v -a -h -m -r --progress --update --delete --delete-excluded 
rsync $src/engine/Engine/Binaries $dst/engine/Engine -v -a -h -m -r --progress --update --delete --delete-excluded --include="*/" --include-from=include/ue_binaries --exclude="*"
rsync $src/engine/Engine/Config $dst/engine/Engine -v -a -h -m -r --progress --update --delete --delete-excluded
rsync $src/engine/Engine/Content $dst/engine/Engine -v -a -h -m -r --progress --update --delete --delete-excluded
rsync $src/engine/Engine/Shaders $dst/engine/Engine -v -a -h -m -r --progress --update --delete --delete-excluded
rsync $src/engine/Engine/Plugins $dst/engine/Engine -v -a -h -m -r --progress --update --delete --delete-excluded --include="*/" --include-from=include/ue_plugins --exclude="*"
