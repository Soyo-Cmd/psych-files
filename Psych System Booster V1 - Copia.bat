@echo off

mshta javascriptalert('INSCREVA-SE NO CANAL DO CRIADOR (Psych RP)!nnClique OK para abrir o canal.'); window.close();
start httpswww.youtube.com@psychrp

chcp 65001 >nul

setlocal enabledelayedexpansion

set /a randomico=%random% %% 4

if "%randomico%"=="0" (
:Amarelo para Laranja
    set "corBaseR=255"
    set "corBaseG=230"
    set "corBaseB=0"
    set "variacaoR=0"
    set "variacaoG=-150"
    set "variacaoB=0"
) else if "%randomico%"=="1" (
:Azul Claro para Rosa
    set "corBaseR=0"
    set "corBaseG=255"
    set "corBaseB=255"
    set "variacaoR=255"
    set "variacaoG=-255"
    set "variacaoB=0"
) else if "%randomico%"=="2" (
:Verde para Laranja
    set "corBaseR=255"
    set "corBaseG=255"
    set "corBaseB=0"
    set "variacaoR=0"
    set "variacaoG=-255"
    set "variacaoB=0"
) else if "%randomico%"=="3" (
:Amarelo para Rosa Claro
    set "corBaseR=255"
    set "corBaseG=255"
    set "corBaseB=0"
    set "variacaoR=0"
    set "variacaoG=-155"
    set "variacaoB=155"
)


for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
Reg add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d 1 /f >nul 2>&1
(for /f %%a in ('echo prompt $E^| cmd') do set "esc=%%a" )

set "lines[0]=
set "lines[1]=
set "lines[2]=  ____   ____ __     __ _______     ___
set "lines[3]= |  _ \ / ___|\ \   / // ___| |     | |
set "lines[4]= | |_| |\___ \ \ \ / /| |   | |_____| |
set "lines[5]= | ___/  ___) | \ V / | |___|  _____  |
set "lines[6]= | |    |____/   / /   \____| |     | |
set "lines[7]= |_|            /_/         |_|     |_| v1
set "lines[8]=                           "       
set "lines[9]=

set "posX=50"
set "posY=5"
set /a "corMax=255"
set /a "incremento=5"


cls

: Ativar modo de cursor invisível
echo !esc![?25l

: Exibir o gradiente para cada linha da arte
for /L %%i in (0,%incremento%,%corMax%) do (
    set /a "line=0"
    for /L %%j in (0,1,7) do (
        set "lineText=!lines[%%j]!"
        echo !esc![!posY!;!posX!H!esc![38;2;%%i;%%i;%%im!lineText!!esc![0m
        set /a "posY+=1"
    )
    set /a "posY=5"
    timeout /t 0 /nobreak >nul
)


set g=[92m
set r=[91m
set red=[04m
set l=[1m
set w=[0m
set b=[94m
set m=[95m
set p=[35m
set c=[35m
set d=[96m
set u=[0m
set z=[91m
set n=[96m
set y=[40;33m
set g2=[102m
set r2=[101m
set t=[40m
set gg=[93m
set q=[90m
set gr=[32m
set o=[38;5;202m
set bb=[38;5;74m
set nn=[38;5;82m
set rr=[1;91m
set blb=[1;94m
set bn=[1;38;5;129m
set ha=[38;5;203m
set frr=[38;2;0;255;255m
set fw=[97m
set "redd=[04m" 
set ha=[38;5;203m
set "fk=[92m" 
set "xv=[91m" 
set "spar=[04m" 
set "sof=[1m" 
set "ww=[0m" 
set "bvv=[94m" 
set "op=[96m" 
set "tq=[0m" 
set "mnb=[91m"
set "zi=[96m" 
set "er=[40;33m" 
set "po=[40m" 
set "pu=[93m" 
set "cya=[96m" 
set "ggg=[90m" 
set "rp=[35m" 
set "drp=[95m" 
set "dr=[38;5;90m" 

title Psych System Booster v1
cls
set "ESC="
cls
:menu
echo(
set "lines[0]=                                ███████╗   ██████═╗ ██╗ ██╗  ██████═╗
set "lines[1]=                                ██╔════╝  ██╔═══██║ ██╚═██║ ██╔═══██║
set "lines[2]=                                ███████╗  ██║   ██║   ██╔═╝ ██║   ██║ 
set "lines[3]=                                ╚════██║  ██║   ██║   ██║   ██║   ██║
set "lines[4]=                                ███████║  ╚██████╔╝   ██║   ╚██████╔╝
set "lines[5]=                                ╚══════╝   ╚═════╝    ╚═╝    ╚═════╝  
set "lines[6]=                                           "

for /L %%j in (0,1,82) do (
    set /a "corR=corBaseR + (variacaoR * %%j / 82)"
    set /a "corG=corBaseG + (variacaoG * %%j / 82)"
    set /a "corB=corBaseB + (variacaoB * %%j / 82)"
    set "esc[%%j]=!ESC![38;2;!corR!;!corG!;!corB!m"
)

for /L %%i in (0,1,6) do (
    set "texto=!lines[%%i]!"
    set "textoGradiente="
    for /L %%j in (0,1,82) do (
        set "char=!texto:~%%j,1!"
        if "!char!" == " " set "char= "
        set "textoGradiente=!textoGradiente!!esc[%%j]!!char!"
    )
    echo( !textoGradiente!!ESC![0m
)

set "linhaGradiente="
set /a "espacosAntes=(80 - 82) / 2"
for /L %%k in (1,1,!espacosAntes!) do set "linhaGradiente=!linhaGradiente! "
for /L %%j in (0,1,90) do (
    	set /a "corR=corBaseR + (variacaoR * %%j / 82)"
    	set /a "corG=corBaseG + (variacaoG * %%j / 82)"
    	set /a "corB=corBaseB + (variacaoB * %%j / 82)"
    	set "linhaGradiente=!linhaGradiente!!ESC![38;2;!corR!;!corG!;!corB!m─"
)
set /a "espacosDepois=(80 - 82) / 2"
for /L %%k in (1,1,!espacosDepois!) do set "linhaGradiente=!linhaGradiente! "
echo(       %linhaGradiente%!ESC![0m

)
        
echo 	 	 %q%

echo(
echo.
echo                %o%[ %b%1 %o%]%w% Criar Ponto de Restauração                %o%[ %b%2 %o%]%w% Otimizar Energia
echo.
echo                %o%[ %b%3 %o%]%w% Aumentar prioridade nos games             %o%[ %b%4 %o%]%w% Desativar Efeitos Visuais  
echo. 
echo                %o%[ %b%5 %o%]%w% Tweaks de privacidade                     %o%[ %b%6 %o%]%w% Desat. tarefas e serviços de Telemetria
echo.
echo                %o%[ %b%7 %o%]%w% Desative TOTALMENTE a XBOX                %o%[ %b%8 %o%]%w% Desativar Relatórios de Erro 
echo.
echo                %o%[ %b%9 %o%]%w% Otimizar ALT +TAB                         %o%[ %b%10 %o%]%w% Arrumar Windows
echo. 
echo                %o%[ %b%11 %o%]%w% Desative Serviços Inúteis                %o%[ %b%12 %o%]%w% Otimizar HDD 
echo.
echo.               %o%[ %b%13 %o%]%w% Otimizar SSD		               %o%[ %b%14 %o%]%w% Limpar Arquivos Temporários						 						  											
echo.
echo.					%w%[ %b%15 %w%]%o% Reverter Otimizações%w%
echo.
set /p opcao="Escolha uma opção:%w% "%w%


if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% equ 11 goto opcao11
if %opcao% equ 12 goto opcao12
if %opcao% equ 13 goto opcao13
if %opcao% equ 14 goto opcao14

echo Opção inválida. Tente novamente.
pause
cls
goto :menu

:opcao1
cls
echo Criando ponto de Restauração...
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v SystemRestorePointCreationFrequency /t REG_DWORD /d 0 /f >nul
powershell -Command "Checkpoint-Computer -Description 'PontoDeRestauracaoCriadoPeloiGust' -RestorePointType 'MODIFY_SETTINGS'"
echo(
echo Ponto de restauração criado com sucesso!
pause
cls
goto :menu

:opcao2
cls
echo Otimizando Energia...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg.exe /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR IdleDisable 0
powercfg.exe /setactive SCHEME_CURRENT
powercfg.cpl
pause
cls
goto :menu

:opcao3
cls
echo ========================================
echo       AUMENTAR PRIORIDADE NOS GAMES
echo ========================================
echo.
echo Escolha o jogo que voce quer priorizar:
echo.
echo 1 - Fortnite
echo 2 - GTA V
echo 3 - FiveM
echo 4 - CS2
echo 5 - Minecraft
echo 6 - Valorant
echo 7 - League of Legends
echo 8 - Warzone
echo 9 - Apex Legends
echo 10 - Roblox
echo 11 - Entre no Discord e sugira jogos!
echo 12 - Voltar ao Menu Principal
echo.
set /p jogo="Digite o numero: "
cls
if "%jogo%"=="1" goto priorizar_fortnite
if "%jogo%"=="2" goto priorizar_gtav
if "%jogo%"=="3" goto priorizar_fivem
if "%jogo%"=="4" goto priorizar_cs2
if "%jogo%"=="5" goto priorizar_minecraft
if "%jogo%"=="6" goto priorizar_valorant
if "%jogo%"=="7" goto priorizar_lol
if "%jogo%"=="8" goto priorizar_warzone
if "%jogo%"=="9" goto priorizar_apex
if "%jogo%"=="10" goto priorizar_roblox
if "%jogo%"=="11" start https://discord.gg/MAkH3VFYwW & goto opcao3
if "%jogo%"=="12" goto menu
goto opcao3

:priorizar_fortnite
echo Aumentando prioridade do Fortnite...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:priorizar_gtav
echo Aumentando prioridade do GTA V...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GTA5.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GTA5.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GTA5.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:priorizar_fivem
echo Aumentando prioridade do FiveM...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM_b2372_GTAProcess.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM_b2372_GTAProcess.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM_b2372_GTAProcess.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:priorizar_cs2
echo Aumentando prioridade do CS2...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:priorizar_minecraft
echo Aumentando prioridade do Minecraft...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\javaw.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\javaw.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\javaw.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:priorizar_valorant
echo Aumentando prioridade do Valorant...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VALORANT-Win64-Shipping.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VALORANT-Win64-Shipping.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VALORANT-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:priorizar_lol
echo Aumentando prioridade do League of Legends...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LeagueClient.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LeagueClient.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LeagueClient.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:priorizar_warzone
echo Aumentando prioridade do Warzone...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cod.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cod.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cod.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:priorizar_apex
echo Aumentando prioridade do Apex Legends...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\r5apex.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\r5apex.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\r5apex.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:priorizar_roblox
echo Aumentando prioridade do Roblox...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RobloxPlayerBeta.exe" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RobloxPlayerBeta.exe\PerfOptions" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\RobloxPlayerBeta.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
pause
goto opcao3

:opcao4
cls
echo Desativar Efeitos Visuais...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f
reg add "HKCU\Control Panel\Desktop" /v VisualFXSetting /t REG_DWORD /d 2 /f
pause
cls
goto :menu

:opcao5
cls
echo Otimizando privacidade de tarefas e serviços de Telemetria...
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowAppDataCollection" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisableWindowsAdvertising" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableMicrosoftConsumerExperience" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d 1 /f
Echo Telemetria e configurações de privacidade desativadas com sucesso!
pause
cls
goto :menu

:opcao6
cls
echo Desabilitando tarefas e serviços de Telemetria...
sc stop DiagTrack
sc config DiagTrack start= disabled
sc stop dmwappushservice
sc config dmwappushservice start= disabled
sc stop wuauserv
sc config wuauserv start= disabled
sc stop dosvc
sc config dosvc start= disabled

pause
cls
goto :menu

:opcao7
cls
echo ===========================================
echo        MENU DE OTIMIZACAO DO PC
echo ===========================================
echo.
echo [1] Iniciar Otimizacao (Remover Xbox)
echo [2] Reverter Otimizacao (Restaurar Xbox)
echo [3] Voltar ao Menu Principal
echo.
set /p escolha=Digite a opcao desejada: 
cls
if "%escolha%"=="1" goto OTIMIZAR
if "%escolha%"=="2" goto REVERTER
if "%escolha%"=="3" goto :menu
goto MENU

:OTIMIZAR
cls
echo Iniciando otimizacao...

sc stop "Xbox Game Monitoring"
sc config "Xbox Game Monitoring" start= disabled
sc stop "GamingServices"
sc config "GamingServices" start= disabled
sc stop "GamingServicesNet"
sc config "GamingServicesNet" start= disabled
powershell -command "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
powershell -command "Get-AppxPackage *xboxgamemode* | Remove-AppxPackage"
powershell -command "Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage"
powershell -command "Get-AppxPackage *Microsoft.GamingServices* | Remove-AppxPackage"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowAppDataCollection" /t REG_DWORD /d 0 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisableWindowsAdvertising" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableMicrosoftConsumerExperience" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d 1 /f
sc stop DiagTrack
sc config DiagTrack start= disabled
sc stop dmwappushservice
sc config dmwappushservice start= disabled
sc stop wuauserv
sc config wuauserv start= disabled
sc stop dosvc
sc config dosvc start= disabled
echo.
echo Otimizacao concluida!
pause
goto REINICIAR

:REVERTER
cls
echo Revertendo otimizacoes...

sc config "Xbox Game Monitoring" start= demand
sc config "GamingServices" start= demand
sc config "GamingServicesNet" start= demand
sc config "XblAuthManager" start= demand
sc config "XboxNetApiSvc" start= demand
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameBar" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowAppDataCollection" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /f
sc config DiagTrack start= auto
sc start DiagTrack
sc config dmwappushservice start= demand
sc config wuauserv start= auto
sc start wuauserv
sc config dosvc start= demand
echo.
echo Reversao concluida!
pause
goto REINICIAR

:REINICIAR
cls
echo.
echo Deseja reiniciar o computador agora para aplicar as alteracoes? (S/N)
set /p resp=

if /i "%resp%"=="S" (
    echo Reiniciando...
    shutdown /r /t 5
) else (
    echo Nao reiniciado. Volte para o menu principal.
    pause
    goto :menu
)

pause
cls
goto :menu

:opcao8
cls
echo Desativando Relatórios de erro do windows...
sc stop "WerSvc"
sc config "WerSvc" start= disabled
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\ErrorReporting" /v "DontSendAdditionalData" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\ErrorReporting" /v "Disabled" /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DisableWindowsErrorReporting" /t REG_DWORD /d 1 /f
Echo Relatórios de Erros do Windows desativado com Sucesso!
pause
cls
goto :menu

:opcao9
cls
echo ====================================
echo        OPCOES ALT + TAB
echo ====================================
echo.
echo 1 - Otimizar ALT + TAB
echo 2 - Reverter ALT + TAB
echo 3 - Voltar para o menu principal
echo.
set /p escolhaAltTab=Digite a opcao desejada: 
cls
if "%escolhaAltTab%"=="1" goto :otimizarAltTab
if "%escolhaAltTab%"=="2" goto :reverterAltTab
if "%escolhaAltTab%"=="3" goto :menu
goto :opcao9

:otimizarAltTab
cls
echo Otimizando ALT + TAB...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /t REG_DWORD /D 1 /f
echo Reiniciando Windows Explorer...
taskkill /f /im explorer.exe >nul
timeout /t 2 /nobreak >nul
start explorer.exe
echo ALT + TAB otimizado com sucesso!
pause
goto :opcao9

:reverterAltTab
cls
echo Revertendo ALT + TAB para o padrao...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /f
echo Reiniciando Windows Explorer...
taskkill /f /im explorer.exe >nul
timeout /t 2 /nobreak >nul
start explorer.exe
echo ALT + TAB revertido com sucesso!
pause
goto :opcao9

:opcao10
cls
echo Arrumando Windows...
sfc /scannow
dism /online /cleanup-image /restorehealth
Echo Windows Arrumado com Sucesso!
pause
cls
goto :menu

:opcao11
cls
echo =============================================
echo        OTIMIZADOR DE SERVIÇOS WINDOWS
echo =============================================
echo.
echo  [1] Desativar Serviços
echo  [2] Reverter Otimização
echo  [3] Voltar ao Menu Principal
echo.
set /p opcao=Digite a opcao desejada: 
cls

if "%opcao%"=="1" goto OTIMIZAR
if "%opcao%"=="2" goto REVERTER
if "%opcao%"=="3" goto :menu

goto :opcao11

:OTIMIZAR
echo Iniciando Otimização...
sc stop Spooler
sc config Spooler start= disabled
sc stop wisvc
sc config wisvc start= disabled
sc stop WerSvc
sc config WerSvc start= disabled
sc stop WbioSrvc
sc config WbioSrvc start= disabled
sc stop DiagTrack
sc config DiagTrack start= disabled
sc stop dmwappushservice
sc config dmwappushservice start= disabled
sc stop wuauserv
sc config wuauserv start= disabled
sc stop dosvc
sc config dosvc start= disabled
echo.
echo Otimizacao concluida!
pause
goto :opcao11

:REVERTER
echo Revertendo Otimizacao...
sc config Spooler start= auto
sc start Spooler
sc config wisvc start= demand
sc config WerSvc start= demand
sc start WerSvc
sc config WbioSrvc start= demand
sc start WbioSrvc
sc config DiagTrack start= demand
sc start DiagTrack
sc config dmwappushservice start= demand
sc start dmwappushservice
sc config wuauserv start= auto
sc start wuauserv
sc config dosvc start= demand
sc start dosvc
echo.
echo Reversao concluida!
pause
goto :opcao11

:opcao12
cls
echo Otimizando HDD...
fsutil behavior set disableLastAccess 2
fsutil behavior set disable8dot3 0
dfrgui.exe
pause
cls
goto :menu

:opcao13
cls
echo Otimizando SSD...
schtasks /Change /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" /Disable
fsutil behavior set disableLastAccess 0
fsutil behavior set disable8dot3 1
cleanmgr.exe
pause
cls
goto :menu

:opcao14
cls
echo Limpando arquivos temporários do Windows...
set "windows=%windir%"
set "systemdrive=%systemdrive%"
set "userprofile=%userprofile%"
set "temp=%temp%"
set "history=%userprofile%\Local Settings\History"
set "cookies=%userprofile%\Cookies"
set "recent=%userprofile%\Recent"
set "printers=%systemroot%\system32\spool\printers"

if exist "%windows%\temp\" del /s /f /q "%windows%\temp\*.*" 2>nul
if exist "%windows%\Prefetch\" del /s /f /q "%windows%\Prefetch\*.exe" 2>nul
if exist "%windows%\Prefetch\" del /s /f /q "%windows%\Prefetch\*.dll" 2>nul
if exist "%windows%\Prefetch\" del /s /f /q "%windows%\Prefetch\*.pf" 2>nul
if exist "%windows%\system32\dllcache\" del /s /f /q "%windows%\system32\dllcache\*.*" 2>nul
if exist "%systemdrive%\Temp\" del /s /f /q "%systemdrive%\Temp\*.*" 2>nul
if exist "%temp%\" del /s /f /q "%temp%\*.*" 2>nul
if exist "%history%\" del /s /f /q "%history%\*.*" 2>nul
if exist "%userprofile%\Local Settings\Temporary Internet Files\" del /s /f /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 2>nul
if exist "%userprofile%\Local Settings\Temp\" del /s /f /q "%userprofile%\Local Settings\Temp\*.*" 2>nul
if exist "%recent%\" del /s /f /q "%recent%\*.*" 2>nul
if exist "%cookies%\" del /s /f /q "%cookies%\*.*" 2>nul

echo Limpando registros de eventos...
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin

for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")

goto afterClear

:do_clear
echo Limpando %1...
wevtutil.exe cl %1
goto :eof

:noAdmin
echo [ERRO]: Execute este script como administrador.
pause
exit /b

:afterClear
cleanmgr.exe
echo Bomba limpada com sucesso!
pause
cls
goto :menu

:opcao15
cls
echo Revertendo otimizações...

:Restaurar Alt+Tab padrão
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v AltTabSettings /t REG_DWORD /D 0 /f

:Reativar Serviço de Relatório de Erros
sc config "WerSvc" start= demand
sc start "WerSvc"
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\ErrorReporting" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f

:Restaurar serviços da Xbox e Gaming
sc config "Xbox Game Monitoring" start= demand
sc config "GamingServices" start= demand
sc config "GamingServicesNet" start= demand
sc config "XblAuthManager" start= demand
sc config "XboxNetApiSvc" start= demand

:Restaurar GameDVR e GameMode
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameBar" /f

:Restaurar Telemetria e Coleta de Dados
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowAppDataCollection" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /f

:Restaurar serviços de Atualização e Telemetria
sc config DiagTrack start= auto
sc start DiagTrack
sc config dmwappushservice start= demand
sc config wuauserv start= auto
sc start wuauserv
sc config dosvc start= demand

:Restaurar efeitos visuais
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9e1e07b800000000 /f
reg add "HKCU\Control Panel\Desktop" /v VisualFXSetting /t REG_DWORD /d 0 /f

echo.
echo Deseja reiniciar o computador agora? (S/N)
set /p resposta=

if /i "%resposta%"=="S" (
    echo Reiniciando o computador...
    shutdown /r /t 5
) else (
    echo Reinicializacao cancelada.
)

pause
cls
goto :menu

:fim
exit
