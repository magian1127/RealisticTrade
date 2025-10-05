@echo off
setlocal

rem 设置源路径和目标路径
set "SOURCE_MODDEF=C:\Games\Steam\steamapps\common\RimWorld\ModSource\RealisticTrade\ModDef\"
set "TARGET_MODS=C:\Games\Steam\steamapps\common\RimWorld\Mods\RealisticTrade\"

rem 检查源目录是否存在
if not exist "%SOURCE_MODDEF%" (
    echo 错误：源目录 %SOURCE_MODDEF% 不存在！
    pause
    exit /b 1
)

rem 复制ModDef内所有文件（强制覆盖）
echo 正在复制ModDef文件...
xcopy "%SOURCE_MODDEF%" "%TARGET_MODS%" /E /Y /I


echo 操作完成！
pause