# Execute este script no PowerShell
# Para adicionar MinGW ao PATH permanentemente

Write-Host "===============================================" -ForegroundColor Cyan
Write-Host "    CONFIGURACAO PERMANENTE MinGW/GCC        " -ForegroundColor Cyan
Write-Host "===============================================" -ForegroundColor Cyan
Write-Host

$mingwPath = "C:\msys64\mingw64\bin"

# Tentar configurar para o sistema (precisa de admin)
try {
    $currentSystemPath = [Environment]::GetEnvironmentVariable("Path", "Machine")
    if ($currentSystemPath -notlike "*$mingwPath*") {
        $newSystemPath = $currentSystemPath + ";" + $mingwPath
        [Environment]::SetEnvironmentVariable("Path", $newSystemPath, "Machine")
        Write-Host "MinGW adicionado ao PATH do SISTEMA!" -ForegroundColor Green
        $systemAdded = $true
    } else {
        Write-Host "MinGW ja esta no PATH do sistema!" -ForegroundColor Blue
        $systemAdded = $true
    }
} catch {
    Write-Host "Nao foi possivel adicionar ao PATH do sistema (precisa de Admin)" -ForegroundColor Yellow
    $systemAdded = $false
}

# Configurar para o usuario (sempre funciona)
$currentUserPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ($currentUserPath -notlike "*$mingwPath*") {
    $newUserPath = $currentUserPath + ";" + $mingwPath
    [Environment]::SetEnvironmentVariable("Path", $newUserPath, "User")
    Write-Host "MinGW adicionado ao PATH do USUARIO!" -ForegroundColor Green
} else {
    Write-Host "MinGW ja esta no PATH do usuario!" -ForegroundColor Blue
}

Write-Host
Write-Host "IMPORTANTE: Reinicie o VS Code para aplicar as mudancas!" -ForegroundColor Yellow
Write-Host

# Verificar se funcionou
Write-Host "Testando instalacao atual:"
try {
    & "C:\msys64\mingw64\bin\gcc.exe" --version | Select-Object -First 1
    Write-Host "GCC encontrado e funcionando!" -ForegroundColor Green
} catch {
    Write-Host "Erro ao encontrar GCC" -ForegroundColor Red
    Write-Host "Verifique se o MSYS2 esta instalado em C:\msys64" -ForegroundColor Red
}

Write-Host
if ($systemAdded) {
    Write-Host "Configuracao concluida! Reinicie o VS Code e use:" -ForegroundColor Green
} else {
    Write-Host "Execute este script como ADMINISTRADOR para configuracao completa" -ForegroundColor Yellow
    Write-Host "Ou a configuracao funcionara apenas para este usuario" -ForegroundColor Yellow
}

Write-Host "   gcc --version" -ForegroundColor White
Write-Host "   g++ --version" -ForegroundColor White
Write-Host "   gcc arquivo.c -o programa.exe" -ForegroundColor White
