@echo off
setlocal

rem ����Դ·����Ŀ��·��
set "SOURCE_MODDEF=C:\Games\Steam\steamapps\common\RimWorld\ModSource\RealisticTrade\ModDef\"
set "TARGET_MODS=C:\Games\Steam\steamapps\common\RimWorld\Mods\RealisticTrade\"

rem ���ԴĿ¼�Ƿ����
if not exist "%SOURCE_MODDEF%" (
    echo ����ԴĿ¼ %SOURCE_MODDEF% �����ڣ�
    pause
    exit /b 1
)

rem ����ModDef�������ļ���ǿ�Ƹ��ǣ�
echo ���ڸ���ModDef�ļ�...
xcopy "%SOURCE_MODDEF%" "%TARGET_MODS%" /E /Y /I


echo ������ɣ�
pause