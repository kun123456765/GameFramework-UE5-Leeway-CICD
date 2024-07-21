SET src=../../project
SET dst=../../../lwd

del /S /Q /F "%dst%\game\Game.uproject"
rmdir /S /Q "%dst%/game/Binaries"
rmdir /S /Q "%dst%/game/Config"
rmdir /S /Q "%dst%/engine/Engine/Binaries"
rmdir /S /Q "%dst%/engine/Engine/Config"
rmdir /S /Q "%dst%/engine/Engine/Content"
rmdir /S /Q "%dst%/engine/Engine/Shaders"
rmdir /S /Q "%dst%/engine/Engine/Plugins"

copy "%src%\game\Game.uproject" "%dst%\game\Game.uproject"
xcopy "%src%/game/Binaries" "%dst%/game/Binaries\" /S /Q /Y /EXCLUDE:project_binaries.exclude
xcopy "%src%/game/Config" "%dst%/game/Config\" /S /Q /Y
xcopy "%src%/engine/Engine/Binaries" "%dst%/engine/Engine/Binaries\" /S /Q /Y /EXCLUDE:project_binaries.exclude
xcopy "%src%/engine/Engine/Config" "%dst%/engine/Engine/Config\" /S /Q /Y
xcopy "%src%/engine/Engine/Content" "%dst%/engine/Engine/Content\" /S /Q /Y
xcopy "%src%/engine/Engine/Shaders" "%dst%/engine/Engine/Shaders\" /S /Q /Y
xcopy "%src%/engine/Engine/Plugins" "%dst%/engine/Engine/Plugins\" /S /Q /Y /EXCLUDE:project_plugins.exclude
