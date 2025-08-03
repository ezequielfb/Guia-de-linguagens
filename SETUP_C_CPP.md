# Configuração de Ambiente C/C++ no VS Code

Este guia documenta como configurar um ambiente de desenvolvimento C/C++ no VS Code usando MSYS2 e MinGW-w64.

## Pré-requisitos

- VS Code instalado
- Extensão C/C++ (ms-vscode.cpptools) instalada
- MSYS2 instalado

## Instalação do MSYS2 e MinGW

### 1. Instalar MSYS2

1. Acesse: https://www.msys2.org/
2. Baixe e instale o MSYS2
3. Após a instalação, abra o terminal MSYS2

### 2. Instalar o compilador GCC/G++

No terminal MSYS2, execute:

```bash
pacman -S --needed base-devel mingw-w64-x86_64-toolchain
```

Quando perguntado sobre quais pacotes instalar, pressione Enter para instalar todos, ou digite `3` para instalar apenas o GCC.

### 3. Verificar a instalação

```bash
# Verificar se foi instalado corretamente
C:\msys64\mingw64\bin\gcc.exe --version
C:\msys64\mingw64\bin\g++.exe --version
```

## Configuração do VS Code

### 1. Arquivo c_cpp_properties.json

O arquivo `.vscode/c_cpp_properties.json` foi criado com a seguinte configuração:

```json
{
    "configurations": [
        {
            "name": "Win32",
            "includePath": [
                "${workspaceFolder}/**",
                "C:/msys64/mingw64/include/**"
            ],
            "defines": [
                "_DEBUG",
                "UNICODE",
                "_UNICODE"
            ],
            "windowsSdkVersion": "10.0.19041.0",
            "compilerPath": "C:/msys64/mingw64/bin/gcc.exe",
            "cStandard": "c17",
            "cppStandard": "c++17",
            "intelliSenseMode": "windows-gcc-x64"
        }
    ],
    "version": 4
}
```

### 2. Configurações do Python (settings.json)

O arquivo `.vscode/settings.json` inclui configurações para desabilitar avisos específicos do Pylance:

```json
{
    "python.analysis.diagnosticSeverityOverrides": {
        "reportUnreachable": "none",
        "reportMatchNotExhaustive": "none"
    },
    "python.analysis.typeCheckingMode": "basic"
}
```

## Como usar

### Opção 1: Script temporário

Execute o arquivo `setup_mingw.bat` para adicionar o MinGW ao PATH temporariamente:

```batch
# No terminal do VS Code ou Command Prompt
./setup_mingw.bat
```

Isso abrirá um novo terminal com o PATH configurado onde você pode usar:

```bash
gcc --version
g++ --version
gcc arquivo.c -o programa.exe
g++ arquivo.cpp -o programa.exe
```

### Opção 2: PATH permanente (Recomendado)

1. Abra as **Configurações do Sistema** → **Variáveis de Ambiente**
2. Em **Variáveis do Sistema**, selecione **Path** e clique em **Editar**
3. Clique em **Novo** e adicione: `C:\msys64\mingw64\bin`
4. Clique **OK** em todas as janelas
5. **Reinicie o VS Code**

### Opção 3: Tasks do VS Code

Use as tasks criadas para compilação rápida:

1. Pressione `Ctrl+Shift+P`
2. Digite `Tasks: Run Task`
3. Selecione:
   - **Compilar C** - para arquivos .c
   - **Compilar C++** - para arquivos .cpp

## Exemplos de Compilação

### Compilar arquivo C

```bash
gcc exemplos/c.c -o exemplos/c.exe
```

### Compilar arquivo C++

```bash
g++ exemplos/cpp.cpp -o exemplos/cpp.exe
```

### Executar o programa

```bash
# No Windows
./exemplos/c.exe
./exemplos/cpp.exe
```

## Estrutura dos arquivos de configuração

```
.vscode/
├── c_cpp_properties.json    # Configuração do IntelliSense C/C++
├── settings.json            # Configurações gerais do workspace
└── tasks.json              # Tasks de compilação
```

## Problemas resolvidos

1. **Erro: "não pôde abrir o arquivo fonte stdio.h"**
   - Resolvido configurando o includePath corretamente

2. **Erro: "gcc não é reconhecido como comando"**
   - Resolvido instalando MinGW e configurando PATH

3. **IntelliSense não funciona**
   - Resolvido com configuração do c_cpp_properties.json

4. **Avisos do Pylance sobre match/case**
   - Resolvido com configurações específicas no settings.json

## Testar a configuração

1. Abra um arquivo `.c` ou `.cpp`
2. Verifique se não há sublinhados vermelhos nos includes
3. Use `Ctrl+Shift+P` → `C/C++: Select IntelliSense Configuration` para confirmar a configuração
4. Compile um programa de teste

## Arquivos de exemplo

O projeto inclui arquivos de exemplo:

- `exemplos/c.c` - Exemplo básico em C
- `exemplos/cpp.cpp` - Exemplo básico em C++
- `exemplos/python.py` - Exemplo em Python (com configurações de Pylance)

## Solução de problemas

### Se o GCC não for encontrado:

1. Verifique se o MSYS2 está instalado em `C:\msys64`
2. Verifique se o GCC existe em `C:\msys64\mingw64\bin\gcc.exe`
3. Execute novamente o comando de instalação do MSYS2

### Se o IntelliSense não funcionar:

1. Pressione `Ctrl+Shift+P`
2. Execute `C/C++: Reset IntelliSense Database`
3. Recarregue o VS Code

### Se houver erros de compilação:

1. Certifique-se de que o PATH está configurado corretamente
2. Use caminhos absolutos se necessário
3. Verifique se não há caracteres especiais nos nomes dos arquivos

---

## Última atualização

Este documento foi criado em 3 de agosto de 2025, documentando a configuração completa do ambiente C/C++ no VS Code.
