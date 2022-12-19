@echo off
title Jokenpo - Atividade SI
mode 80,30
color 0a
set /p nome=Digite seu nome:
set /a ganho=0
set /a perdeu=0
set /a empate=0

:inicio
mode 60,30 
cls
echo ---------------------------------------
echo  Digite seu nome: %nome%
echo ---------------------------------------
echo.
echo.
echo                        ( o   o )
echo                =====ooO== (_) ==ooO=====
echo ------------------------------------------------------------
echo                 Bem-vindo ao JO-KEN-PO
echo ------------------------------------------------------------
echo.
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] LARGATO
echo [5] SPOCK
echo [E] ENCERRAR JOGO
echo [R] REGRAS
  echo ------------------------------------------------------------
set /p op=Digite a opcao: 
if %op% == 1 (goto:pedra) 
if %op% == 2 (goto:papel)
if %op% == 3 (goto:tesoura)
if %op% == 4 (goto:largato)
if %op% == 5 (goto:spock)
if /i %op% == r (goto:regras) 
if /i %op% == e (exit) else ( 
    cls
    echo.
    echo ------------------------------------------------------------
    echo                    OPCAO INVALIDA !!
    echo ------------------------------------------------------------
    pause
    goto:inicio
)

:pedra
echo %nome% escolheu: PEDRA
set /a numero=( %random% %% 5 ) + 1
if %numero% == 1 ( echo Computador escolheu:PEDRA 
    echo.
    echo OPS...DEU EMPATE!!!
    set /a empate=%empate% + 1
    pause > nul
    goto:placar
)
if %numero% == 2 ( echo Computador escolheu: PAPEL 
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)
if %numero% == 3 ( echo Computador escolheu: TESOURA
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)
if %numero% == 4 ( echo Computador escolheu: LARGATO 
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)
if %numero% == 5 ( echo Computador escolheu: SPOCK 
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)

:papel
echo %nome% escolheu: PAPEL
set /a numero=( %random% %% 5 ) + 1
if %numero% == 1 ( echo Computador escolheu:PEDRA 
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)
if %numero% == 2 ( echo Computador escolheu: PAPEL 
    echo.
    echo OPS...DEU EMPATE!!!
    set /a empate=%empate% + 1
    pause > nul
    goto:placar
)
if %numero% == 3 ( echo Computador escolheu: TESOURA
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)
if %numero% == 4 ( echo Computador escolheu: LARGATO 
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)
if %numero% == 5 ( echo Computador escolheu: SPOCK 
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)

:tesoura
echo %nome% escolheu: TESOURA
set /a numero=( %random% %% 5 ) + 1
if %numero% == 1 ( echo Computador escolheu:PEDRA 
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)
if %numero% == 2 ( echo Computador escolheu: PAPEL 
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)
if %numero% == 3 ( echo Computador escolheu: TESOURA
    echo.
    echo OPS...DEU EMPATE!!!
    set /a empate=%empate% + 1
    pause > nul
    goto:placar
)
if %numero% == 4 ( echo Computador escolheu: LARGATO 
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)
if %numero% == 5 ( echo Computador escolheu: SPOCK 
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)

:largato
echo %nome% escolheu: LARGATO
set /a numero=( %random% %% 5 ) + 1
if %numero% == 1 ( echo Computador escolheu:PEDRA 
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)
if %numero% == 2 ( echo Computador escolheu: PAPEL 
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)
if %numero% == 3 (echo Computador escolheu: TESOURA
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)
if %numero% == 4 (echo Computador escolheu: LARGATO 
    echo.
    echo OPS...DEU EMPATE!!!
    set /a empate=%empate% + 1
    pause > nul
    goto:placar
)
if %numero% == 5 (echo Computador escolheu: SPOCK 
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)

:spock
echo %nome% escolheu: SPOCK
set /a numero=( %random% %% 5 ) + 1
if %numero% == 1 ( echo Computador escolheu:PEDRA 
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)
if %numero% == 2 ( echo Computador escolheu: PAPEL 
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)
if %numero% == 3 ( echo Computador escolheu: TESOURA
    echo.
    echo PARABENS, VOCE GANHOU!!
    set /a ganho = %ganho% + 1
    pause > nul
    goto:placar
)
if %numero% == 4 ( echo Computador escolheu: LARGATO 
    echo.
    echo QUE PENA...VOCE PERDEU!!!
    set /a perdeu = %perdeu% + 1
    pause > nul
    goto:placar
)
if %numero% == 5 ( echo Computador escolheu: SPOCK 
    echo.
    echo OPS...DEU EMPATE!!!
    set /a empate=%empate% + 1
    pause > nul
    goto:placar
)

:placar
echo.
echo  === PLACAR DO JOGO ===
echo VITORIAS: %ganho%
echo DERROTAS: %perdeu%
echo EMPATES: %empate%
pause > nul
set /p ll=Deseja jogar novamente? [S/N]:
if /i %ll% == s (goto:inicio ) else (exit)

:regras
mode 90,30
echo Pedra:
echo      Empata com Pedra; Ganha de Tesoura e Largato; Perde de Papel e Spock;
echo.
echo Papel:
echo      Empata com Papel; Ganha de Pedra e Spock; Perde de Tesoura e Largato;
echo.
echo Tesoura:
echo      Empata com Tesoura; Ganha de Largato e Papel; Perde de Pedra e Spock;
echo.
echo Largato:
echo      Empata com Largato; Ganha de Papel e Spock; Perde de Pedra e Tesoura;
echo.
echo Spock:
echo      Empata com Spock; Ganha de Pedra e Tesoura; Perde de Largato e Papel;
echo.
pause
goto:inicio