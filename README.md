# AUTOMATIZAÇÃO DE ROTINA
A ideia surgiu quando fui contratado por uma empresa onde haviam 200 computadores com diferentes módulos de um ERP.
As atualizações eram constantes, e, era atualizada uma máquina de cada vez, usando periféricos físicos para atualizar as máquinas.

Usando o agendamento de tarefas do Windows, este script é executado todos os dias em um determinado horário

Se a pasta de fonte conter arquivos no horário da execução do script, ele irá sobrepor os arquivos da pasta destino.
Após transferir os arquivos da pasta fonte para a pasta destino, os arquivos da pasta fonte são apagados, evitando redundância.

Os arquivos são jogados na pasta de cada computador que utiliza o módulo através de um servidor.
-----------------------------------------------------------------------------------------------------------------------------------


EXEMPLO DE COMO ACESSAR PELO SERVIDOR:

@echo off
choice /C S /M "O Sistema precisa ser atualizado, termine sua tarefa e pressione [S]im"
IF errorlevel=1 goto SIM
:SIM
net use C: \\192.168.0.1\Users\Gabriel\Documents\PASTA FONTE
xcopy "C:\Users\Gabriel\Documents\PASTA FONTE\*.*" "C:\Users\Gabriel\Documents\PASTA DESTINO"
cls
del /S /F /Q "C:\Users\Gabriel\Documents\PASTA FONTE\*.*"
cls
echo.
echo Back-up finalizado com sucesso!
echo.
exit

