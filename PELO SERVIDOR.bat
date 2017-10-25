@echo off
choice /C S /M "O Sistema precisa ser atualizado, termine sua tarefa e pressione [S]im"
IF errorlevel=1 goto SIM
:SIM
net use C: \\10.0.0.101\Users\Gabriel\Documents\PASTA FONTE
xcopy "C:\Users\Gabriel\Documents\PASTA FONTE\*.*" "C:\Users\Gabriel\Documents\PASTA DESTINO"
cls
del /S /F /Q "C:\Users\Gabriel\Documents\PASTA FONTE\*.*"
cls
echo.
echo Back-up finalizado com sucesso!
echo.
exit