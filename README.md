# Guia de Referência Rápida de Linguagens

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Languages](https://img.shields.io/badge/languages-7-brightgreen.svg)
![Status](https://img.shields.io/badge/status-active-success.svg)
![Platform](https://img.shields.io/badge/platform-windows%20%7C%20linux%20%7C%20macOS-lightgrey.svg)
![Examples](https://img.shields.io/badge/examples-executable-orange.svg)

Este repositório é um guia de referência rápida com exemplos de código e sintaxe para várias linguagens de programação. O objetivo é fornecer uma visão consolidada de como realizar tarefas comuns em diferentes ecossistemas.

Todo o código de exemplo é executável e está localizado na pasta [`exemplos/`](./exemplos/).

---

## Índice

- [Como Usar](#como-usar)
- [Configuração de Ambiente](#configuração-de-ambiente)
- [Documentação Adicional](#documentação-adicional)
- [🐍 Python](#-python)
- [🟡 JavaScript (ES6+)](#-javascript-es6)
- [💎 Ruby](#-ruby)
- [🐘 PHP](#-php)
- [⚙️ C (Linguagem C)](#️-c-linguagem-c)
- [⚡ C++](#-c)
- [🔷 C# (C Sharp)](#-c-c-sharp)

---

## Como Usar

### Linguagens Interpretadas
Para linguagens que não precisam de compilação, execute diretamente:

**Python:**
```bash
python exemplos/python.py
```

**JavaScript (Node.js):**
```bash
node exemplos/javascript.js
```

**Ruby:**
```bash
ruby exemplos/ruby.rb
```

**PHP:**
```bash
php exemplos/php.php
```

### Linguagens Compiladas
Para C/C++, você precisa compilar antes de executar:

**C:**
```bash
# Compilar
gcc exemplos/c.c -o exemplos/c

# Executar (Linux/macOS/MSYS2)
./exemplos/c

# Executar (Windows Prompt/PowerShell)
./exemplos/c.exe
```

**C++:**
```bash
# Compilar
g++ exemplos/cpp.cpp -o exemplos/cpp

# Executar (Linux/macOS/MSYS2)
./exemplos/cpp

# Executar (Windows Prompt/PowerShell)
./exemplos/cpp.exe
```

**C# (.NET):**
```bash
# Forma rápida (arquivo único)
dotnet run exemplos/csharp.cs

# Forma robusta (projeto completo)
dotnet new console
# Substitua o conteúdo de Program.cs pelo código do exemplo
dotnet run
```

> **Nota:** Para projetos C# mais complexos, a prática padrão é criar um projeto com `dotnet new console` e substituir o conteúdo do arquivo Program.cs.

---

## Configuração de Ambiente

### Para C/C++

#### Pré-requisitos
Para compilar e executar código C/C++, você precisa de um compilador instalado:

#### Windows
1. **Instale o MSYS2:** https://www.msys2.org/
2. **Instale o compilador GCC/G++:**
   ```bash
   pacman -S --needed base-devel mingw-w64-x86_64-toolchain
   ```
3. **Configure o PATH:** Adicione `C:\msys64\mingw64\bin` às variáveis de ambiente

#### Scripts de Configuração Automática (Windows)
Este repositório inclui scripts para facilitar a configuração:
- `setup_mingw_permanente.ps1` - Configuração permanente (recomendado)
- `setup_mingw.bat` - Configuração temporária

#### Linux/macOS
```bash
# Ubuntu/Debian
sudo apt install build-essential

# macOS
xcode-select --install
# ou instale via Homebrew: brew install gcc
```

#### Verificar Instalação
```bash
gcc --version
g++ --version
```

---

## Documentação Adicional

- [Setup Completo C/C++](SETUP_C_CPP.md) - Guia detalhado de configuração
- [Guia Rápido C/C++](GUIA_RAPIDO_C_CPP.md) - Setup rápido para C/C++

---

## Comparação de Linguagens

### Características Gerais

| Linguagem | Paradigma Principal | Tipagem | Execução | Curva de Aprendizado | Uso Principal |
|-----------|-------------------|---------|----------|---------------------|---------------|
| 🐍 **Python** | Multi-paradigma | Dinâmica/Forte | Interpretada | Iniciante | Scripts, IA/ML, Web |
| 🟡 **JavaScript** | Multi-paradigma | Dinâmica/Fraca | Interpretada | Iniciante | Web, Full-stack |
| 💎 **Ruby** | Orientada a Objetos | Dinâmica/Forte | Interpretada | Iniciante | Web, Scripts |
| 🐘 **PHP** | Multi-paradigma | Dinâmica/Fraca | Interpretada | Iniciante | Web Backend |
| ⚙️ **C** | Procedural | Estática/Forte | Compilada | Intermediário | Sistemas, Embarcados |
| ⚡ **C++** | Multi-paradigma | Estática/Forte | Compilada | Avançado | Sistemas, Games, Performance |
| 🔷 **C#** | Orientada a Objetos | Estática/Forte | Compilada/JIT | Intermediário | Desktop, Web, Enterprise |

### Performance e Ecosistema

| Linguagem | Performance | Gerenciador de Pacotes | Frameworks Populares | Comunidade | Popularidade no GitHub |
|-----------|-------------|----------------------|---------------------|------------|----------------------|
| 🐍 **Python** | Média | pip/conda | Django, Flask, FastAPI | Muito Grande | ⭐⭐⭐⭐⭐ |
| 🟡 **JavaScript** | Boa (V8) | npm/yarn | React, Express.js, Vue | Muito Grande | ⭐⭐⭐⭐⭐ |
| 💎 **Ruby** | Média | gem/bundler | Ruby on Rails | Grande | ⭐⭐⭐⭐ |
| 🐘 **PHP** | Boa | composer | Laravel, Symfony | Grande | ⭐⭐⭐ |
| ⚙️ **C** | Excelente | Manual/Make | - (Bibliotecas padrão) | Tradicional | ⭐⭐⭐ |
| ⚡ **C++** | Excelente | vcpkg/conan | Qt, Boost, SFML | Grande | ⭐⭐⭐⭐ |
| 🔷 **C#** | Excelente | NuGet | .NET (ASP.NET, MAUI) | Grande | ⭐⭐⭐⭐ |

### Características Técnicas

| Linguagem | Garbage Collection | Threading | Memory Management | Orientação a Objetos |
|-----------|-------------------|-----------|-------------------|---------------------|
| 🐍 **Python** | ✅ Automático | GIL (limitado) | Automático | ✅ Suporte completo |
| 🟡 **JavaScript** | ✅ Automático | Event Loop | Automático | ✅ Prototipal/Classes |
| 💎 **Ruby** | ✅ Automático | Threads reais | Automático | ✅ Tudo é objeto |
| 🐘 **PHP** | ✅ Automático | Limitado | Automático | ✅ Suporte completo |
| ⚙️ **C** | ❌ Manual | Manual (pthreads) | Manual | ❌ Simulado com structs |
| ⚡ **C++** | ❌ Manual/Smart Ptrs | Manual/std::thread | Manual/RAII | ✅ Nativo e poderoso |
| 🔷 **C#** | ✅ Automático | Async/await | Automático | ✅ Nativo e completo |

---

## 🐍 Python

### Básico
* **Tipos de Dados Fundamentais:** `int`, `float`, `bool`, `str`, `list`, `tuple`, `dict`, `set`, `NoneType`.
* **Operadores:** `+`, `-`, `*`, `/` (divisão float), `//` (divisão inteira), `%` (módulo), `**` (expoente).
* **Métodos Comuns em Strings:** `.upper()`, `.lower()`, `[::-1]` (inversão), `.capitalize()`.
* **Concatenação/Interpolação (f-string):**
    * [Veja o exemplo em `exemplos/python.py`](./exemplos/python.py)

### Estrutura de Condição
* **if / elif / else:** Usa `:` e indentação.
    * [Veja o exemplo em `exemplos/python.py`](./exemplos/python.py)
* **Equivalente a `unless`:** A forma "Pythônica" é usar `if not`.
    * [Veja o exemplo em `exemplos/python.py`](./exemplos/python.py)
* **Equivalente a `case` (Python 3.10+):** Usa-se `match / case`.
    * [Veja o exemplo em `exemplos/python.py`](./exemplos/python.py)

### Estrutura de Iteração (Loops)
* **for:** Itera sobre qualquer sequência.
* **while:** Executa enquanto uma condição é verdadeira.
* **Equivalente a `.times`:** Usa-se `for` com `range()`.
* **Equivalente a `loop do`:** Usa-se `while True` com uma condição de `break`.
    * [Veja todos os exemplos de loop em `exemplos/python.py`](./exemplos/python.py)

### Collections
* **list (Array):** Coleção ordenada e mutável.
* **dict (Hash):** Coleção de pares chave-valor.
    * [Veja exemplos de `list` e `dict` em `exemplos/python.py`](./exemplos/python.py)

### Iteradores de Alto Nível
* A forma "Pythônica" de usar `map` e `select/filter` é através de **List Comprehensions**.
    * [Veja o exemplo em `exemplos/python.py`](./exemplos/python.py)

### Gerenciamento de Pacotes
* **Ferramenta:** `pip`.
* **Comando:** `pip install <biblioteca>`.
* **Arquivo de dependências:** `requirements.txt`.
* **Uso:**
    * `pip install -r requirements.txt` (Instala as dependências do arquivo).
    * `pip freeze > requirements.txt` (Gera o arquivo a partir do ambiente).

### POO (Programação Orientada a Objetos)
* **Classe, Objeto e Herança.**
* **Construtor:** O método especial `__init__`.
* **Atributos de Instância:** `self.atributo`.
    * [Veja todos os exemplos de POO em `exemplos/python.py`](./exemplos/python.py)

---

## 🟡 JavaScript (ES6+)

### Básico
* **Tipos de Dados Primitivos:** `String`, `Number`, `Boolean`, `null`, `undefined`, `Symbol`, `BigInt`.
* **Tipos de Objeto:** `Object`, `Array`, `Function`, etc.
* **Operadores:** `+`, `-`, `*`, `/`, `%` (módulo), `**` (expoente).
* **Declaração de Variáveis:** `const` (constante), `let` (variável de escopo), `var` (antigo).
* **Concatenação/Interpolação (Template Literals):**
    * [Veja o exemplo em `exemplos/javascript.js`](./exemplos/javascript.js)

### Estrutura de Condição
* **if / else if / else:** Usa `{}` para delimitar os blocos.
* **Equivalente a `unless`:** Usa-se `if (!condicao)`.
* **Equivalente a `case`:** Usa-se `switch / case`.
    * [Veja todos os exemplos de condição em `exemplos/javascript.js`](./exemplos/javascript.js)

### Estrutura de Iteração (Loops)
* **for...of:** Itera sobre os valores de coleções iteráveis (como Arrays).
* **while:** Executa enquanto uma condição é verdadeira.
* **for com contador:** O loop `for` clássico com `(let i = 0; ...)`.
    * [Veja todos os exemplos de loop em `exemplos/javascript.js`](./exemplos/javascript.js)

### Collections
* **Array (Lista):** Coleção ordenada.
* **Object (Dicionário/Hash):** Coleção de pares chave-valor.
    * [Veja exemplos de `Array` e `Object` em `exemplos/javascript.js`](./exemplos/javascript.js)

### Iteradores de Alto Nível
* **.forEach():** Para iterar sobre cada item.
* **.map():** Para transformar cada item e retornar um novo Array.
* **.filter():** Para filtrar itens e retornar um novo Array.
    * [Veja o exemplo em `exemplos/javascript.js`](./exemplos/javascript.js)

### Gerenciamento de Pacotes
* **Ferramenta:** `npm` (Node Package Manager) ou `yarn`.
* **Arquivo de dependências:** `package.json`.
* **Uso:** `npm install` (instala as dependências do `package.json`).

### POO (Programação Orientada a Objetos)
* **Classe, Objeto e Herança (`extends`).**
* **Construtor:** O método especial `constructor`.
* **Atributos de Instância:** `this.atributo`.
    * [Veja todos os exemplos de POO em `exemplos/javascript.js`](./exemplos/javascript.js)

---

## 💎 Ruby

### Básico
* **Tipos de Dados:** `Integer`, `Float`, `Boolean`, `String`, `Array`, `Hash`, `Symbol`.
* **Operadores:** `+`, `-`, `*`, `/`, `%` (módulo), `**` (expoente).
* **Concatenação/Interpolação:** Usa-se `#{variavel}` dentro de aspas duplas.
    * [Veja o exemplo em `exemplos/ruby.rb`](./exemplos/ruby.rb)

### Estrutura de Condição
* **if / elsif / else:** Usa `end` para fechar os blocos.
* **unless:** Executa o bloco se a condição for `false`. É o oposto do `if`.
* **case:** O `switch/case` do Ruby.
    * [Veja todos os exemplos de condição em `exemplos/ruby.rb`](./exemplos/ruby.rb)

### Estrutura de Iteração (Loops)
* **.each:** A forma idiomática de iterar sobre coleções.
* **while:** Executa enquanto uma condição é verdadeira.
* **.times:** Executa um bloco um número fixo de vezes.
* **loop do:** Cria um loop infinito que precisa de um `break`.
    * [Veja todos os exemplos de loop em `exemplos/ruby.rb`](./exemplos/ruby.rb)

### Collections
* **Array (Lista):** Coleção ordenada.
* **Hash (Dicionário):** Coleção de pares chave-valor.
    * [Veja exemplos de `Array` e `Hash` em `exemplos/ruby.rb`](./exemplos/ruby.rb)

### Iteradores de Alto Nível
* **.map:** Para transformar cada item e retornar um novo Array.
* **.select:** Para filtrar itens e retornar um novo Array.
    * [Veja o exemplo em `exemplos/ruby.rb`](./exemplos/ruby.rb)

### Gerenciamento de Pacotes (Gems)
* **Ferramenta:** `gem` e `bundler`.
* **Arquivo de dependências:** `Gemfile`.
* **Uso:** `bundle install` (instala as dependências do `Gemfile`).

### POO (Programação Orientada a Objetos)
* **Classe, Objeto e Herança (`<`).**
* **Construtor:** O método especial `initialize`.
* **Atributos de Instância:** `@atributo`.
* **Getters/Setters:** Usa-se atalhos como `attr_accessor`.
    * [Veja todos os exemplos de POO em `exemplos/ruby.rb`](./exemplos/ruby.rb)
    
---

## 🐘 PHP

### Básico
* **Declaração de Variáveis:** Sempre começam com `$`.
* **Concatenação/Interpolação:** Usa-se `.` para concatenar ou `{$variavel}` dentro de aspas duplas.
    * [Veja o exemplo em `exemplos/php.php`](./exemplos/php.php)

### Estrutura de Condição
* **if / elseif / else** e **switch / case**.
    * [Veja o exemplo em `exemplos/php.php`](./exemplos/php.php)

### Estrutura de Iteração (Loops)
* **foreach:** Itera sobre arrays.
* **for:** Loop com contador.
    * [Veja o exemplo em `exemplos/php.php`](./exemplos/php.php)

### Collections
* **Array:** PHP tem um tipo de `array` unificado que pode ser indexado (lista) ou associativo (dicionário/hash).
    * [Veja o exemplo em `exemplos/php.php`](./exemplos/php.php)

### Gerenciamento de Pacotes
* **Ferramenta:** `Composer`.
* **Arquivo de dependências:** `composer.json`.
* **Uso:** `composer install`.

### POO (Programação Orientada a Objetos)
* **Classe, Objeto e Herança (`extends`).**
* **Construtor:** `__construct`.
* **Atributos e Métodos:** Acesso com `->`.
    * [Veja o exemplo em `exemplos/php.php`](./exemplos/php.php)

---

## ⚙️ C (Linguagem C)

### Visão Geral
* C é uma linguagem procedural e de baixo nível. Muitos conceitos de alto nível (como classes e iteradores `map`/`filter`) não existem nativamente e precisam ser implementados manualmente.
* O código precisa ser compilado antes da execução usando um compilador como GCC.

### Compilação
```bash
# Compilar
gcc exemplos/c.c -o exemplos/c

# Executar (Linux/macOS/MSYS2)
./exemplos/c

# Executar (Windows Prompt/PowerShell)
./exemplos/c.exe
```

### Estruturas de Controle
* **if / else** e **for loop** são muito similares a outras linguagens da família C.
    * [Veja o exemplo em `exemplos/c.c`](./exemplos/c.c)

### Collections
* A estrutura de dados principal é o **Array**, que tem tamanho fixo.
    * [Veja o exemplo em `exemplos/c.c`](./exemplos/c.c)

### POO (Simulada)
* A orientação a objetos é simulada usando `struct`s (para agrupar dados) e funções que operam nesses structs.
    * [Veja o exemplo em `exemplos/c.c`](./exemplos/c.c)

### Gerenciamento de Pacotes
* Não possui um gerenciador de pacotes centralizado como `pip` ou `npm`. O gerenciamento de dependências é feito através de bibliotecas (`.a`, `.so`) e sistemas de build como o `Make`.

---

## ⚡ C++

### Visão Geral
* C++ é um superconjunto de C, com um forte foco em performance, controle de baixo nível e programação orientada a objetos.
* Também é uma linguagem compilada que utiliza compiladores como G++ ou Clang++.

### Compilação
```bash
# Compilar
g++ exemplos/cpp.cpp -o exemplos/cpp

# Executar (Linux/macOS/MSYS2)
./exemplos/cpp

# Executar (Windows Prompt/PowerShell)
./exemplos/cpp.exe

# Com otimizações
g++ -O2 exemplos/cpp.cpp -o exemplos/cpp
```

### Collections (STL)
* A **Standard Template Library (STL)** oferece estruturas de dados poderosas:
    * **`std::vector`:** Um array dinâmico.
    * **`std::map`:** Um dicionário/hash.
    * [Veja o exemplo em `exemplos/cpp.cpp`](./exemplos/cpp.cpp)

### Iteradores de Alto Nível
* A STL, através da biblioteca `<algorithm>`, permite operações funcionais como `map` (usando `std::transform`) e `filter` (usando `std::copy_if` ou similares), geralmente com funções lambda.
    * [Veja o exemplo em `exemplos/cpp.cpp`](./exemplos/cpp.cpp)

### POO (Programação Orientada a Objetos)
* C++ tem um dos sistemas de POO mais poderosos, com classes, construtores, herança (`:`), polimorfismo, templates, etc.
    * [Veja o exemplo em `exemplos/cpp.cpp`](./exemplos/cpp.cpp)

### Gerenciamento de Pacotes
* Tradicionalmente usa sistemas de build como o `CMake`. Gerenciadores de pacotes modernos como `vcpkg` e `Conan` estão se tornando populares.

---

## 🔷 C# (C Sharp)

### Visão Geral
* C# é uma linguagem moderna, orientada a objetos e de alto nível, criada pela Microsoft. Roda na plataforma .NET.
* É fortemente tipada e sua sintaxe é uma evolução do C++.

### Compilação e Execução
```bash
# Com .NET CLI
dotnet run exemplos/csharp.cs

# Ou compilar e executar separadamente
dotnet build
dotnet run
```

### Collections (.NET)
* A plataforma .NET oferece uma rica biblioteca de coleções em `System.Collections.Generic`.
    * **`List<T>`:** Uma lista/array dinâmico.
    * **`Dictionary<TKey, TValue>`:** Um dicionário/hash.
    * [Veja o exemplo em `exemplos/csharp.cs`](./exemplos/csharp.cs)

### Iteradores de Alto Nível (LINQ)
* C# possui o **LINQ (Language-Integrated Query)**, uma forma extremamente poderosa e legível de manipular coleções.
    * **`.Select()`:** Equivalente ao `map`.
    * **`.Where()`:** Equivalente ao `filter`/`select`.
    * [Veja o exemplo em `exemplos/csharp.cs`](./exemplos/csharp.cs)

### POO (Programação Orientada a Objetos)
* A POO é o pilar do C#. Possui classes, construtores, herança (`:`), propriedades automáticas, interfaces, etc.
    * [Veja o exemplo em `exemplos/csharp.cs`](./exemplos/csharp.cs)

### Gerenciamento de Pacotes
* **Ferramenta:** `NuGet`.
* **Arquivo de dependências:** O arquivo de projeto (`.csproj`).
* **Uso:** `dotnet add package <pacote>`.

---

## Como Contribuir

Encontrou um erro ou tem uma sugestão para melhorar este guia? Sinta-se à vontade para:

-**Reportar bugs**: Abra uma [Issue](../../issues) descrevendo o problema
-**Sugerir melhorias**: Compartilhe suas ideias nas [Issues](../../issues)
-**Contribuir com código**: Envie um [Pull Request](../../pulls)
-**Adicionar exemplos**: Contribua com novos exemplos de código
-**Sugerir novas linguagens**: Proposta de linguagens para adicionar ao guia

Toda contribuição é bem-vinda e ajuda a tornar este guia ainda melhor para a comunidade! 🎉

### Diretrizes para Contribuição
- Mantenha o estilo de código consistente com os exemplos existentes
- Adicione comentários explicativos no código
- Teste os exemplos antes de enviar
- Siga o padrão de formatação do README.md

#### Para Adicionar Novas Linguagens:
- Atualize **todas** as tabelas comparativas
- Adicione arquivo de exemplo em `exemplos/`
- Inclua seção completa com todas as subseções padrão
- Atualize o badge de contagem de linguagens
- Adicione instruções de compilação (se aplicável)
- O emoji não é obrigatorio, mas se optar, utilize um consistente com o tema da linguagem