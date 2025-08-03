# Guia Rápido: C/C++ no VS Code

## Passos rápidos

### 1. Instalar MSYS2
- Baixe: https://www.msys2.org/
- Instale normalmente

### 2. Instalar GCC/G++
Abra o terminal MSYS2 e execute:
```bash
pacman -S --needed base-devel mingw-w64-x86_64-toolchain
```

### 3. Configurar PATH (Permanente)
1. **Windows + R** → `sysdm.cpl` → **Variáveis de Ambiente**
2. Em **Variáveis do Sistema** → **Path** → **Editar** → **Novo**
3. Adicione: `C:\msys64\mingw64\bin`
4. **OK** em tudo e **reinicie o VS Code**

### 4. Testar
```bash
gcc --version
g++ --version
```

## Arquivos criados automaticamente
- `.vscode/c_cpp_properties.json` - Configuração do IntelliSense
- `.vscode/settings.json` - Configurações do workspace
- `setup_mingw.bat` - Script para PATH temporário

## Como compilar
```bash
# C
gcc arquivo.c -o programa.exe

# C++
g++ arquivo.cpp -o programa.exe
```

## Pronto
Agora você pode programar em C/C++ no VS Code com IntelliSense funcionando
