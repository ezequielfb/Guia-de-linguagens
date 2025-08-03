@echo off
REM Adiciona MinGW ao PATH temporariamente
echo ===============================================
echo       CONFIGURACAO TEMPORARIA MinGW
echo ===============================================
echo.
echo AVISO: Esta e uma configuracao TEMPORARIA!
echo Para evitar executar este arquivo toda vez:
echo.
echo 1. Va em: Windows + R ^> sysdm.cpl
echo 2. Variaveis de Ambiente ^> Path ^> Editar ^> Novo
echo 3. Adicione: C:\msys64\mingw64\bin
echo 4. Reinicie o VS Code
echo.
echo Ou execute: setup_mingw_permanente.ps1 (como Admin)
echo ===============================================
echo.

set PATH=C:\msys64\mingw64\bin;%PATH%
echo MinGW adicionado ao PATH temporariamente
echo.
echo Agora voce pode usar:
echo   gcc --version
echo   g++ --version
echo   gcc arquivo.c -o programa.exe
echo   g++ arquivo.cpp -o programa.exe
echo.
cmd /k
