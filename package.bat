rem SET CompileTarget=Development
SET CompileTarget=Shipping
SET PackageName=latest-shipping
cd %~dp0
"D:/work/projects/kun/ue/5.4/leeway/project/engine/Engine/Build/BatchFiles/RunUAT.bat"  -ScriptsForProject="D:/work/projects/kun/ue/5.4/leeway/project/game/Game.uproject" Turnkey -command=VerifySdk -platform=Win64 -UpdateIfNeeded -EditorIO -EditorIOPort=55000  -project="D:/work/projects/kun/ue/5.4/leeway/project/game/Game.uproject" BuildCookRun -nop4 -utf8output -nocompileeditor -skipbuildeditor -cook  -project="D:/work/projects/kun/ue/5.4/leeway/project/game/Game.uproject" -target=Game  -unrealexe="D:\work\projects\kun\ue\5.4\leeway\project\engine\Engine\Binaries\Win64\UnrealEditor-Cmd.exe" -platform=Win64 -stage -archive -package -build -pak -iostore -compressed -prereqs -archivedirectory="D:/work/projects/kun/ue/5.4/leeway/package/%PackageName%" -clientconfig=%CompileTarget% -nocompile -nocompileuat
