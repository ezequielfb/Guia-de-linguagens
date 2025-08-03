# -*- coding: utf-8 -*-
# Guia de Referência Rápida: Exemplos de Código Python

print("### Guia de Referência Rápida: Python ###")

# ================================================#
print("\n--- Básico: Tipos de Dados e Operadores ---")
# ================================================#

# Interpolação de String (f-string)
nome = "Ezequiel"
print(f"Olá, meu nome é {nome}")


# ================================================#
print("\n--- Estrutura de Condição ---")
# ================================================#

# if / elif / else
nome_condicao = "Ezequiel"
if nome_condicao == "Ezequiel":
    print("Meu nome é Ezequiel")
elif nome_condicao == "André":
    print("Meu nome é André")
else:
    print("Não sei quem sou...")

# if not (equivalente a 'unless')
idade = 20
if not idade < 18:
    print("Você é maior de idade")
else:
    print("Você é menor de idade")

# match / case (Python 3.10+)
status_code = 200
match status_code:  # type: ignore
    case 200 | 201:
        print("Sucesso")
    case 404:
        print("Não encontrado")
    case _:  # Caso padrão
        print("Outro status")


# ================================================#
print("\n--- Estrutura de Iteração (Loops) ---")
# ================================================#

# for loop
frutas = ["Maçã", "Uva", "Banana"]
print("Iterando sobre uma lista:")
for fruta in frutas:
    print(f"- {fruta}")

# while loop
num = 1
print("\nContando com while:")
while num <= 5:
    print(num, end=' ')
    num += 1
print()  # para pular a linha

# for com range (equivalente a .times)
print("\nLoop com range:")
for i in range(3):
    print(f"Hello World! - {i}")

# loop "infinito" com break
print("\nLoop com break:")
count = 0
while True:
    print(f"Contador: {count}")
    if count == 3:
        break
    count += 1


# ================================================#
print("\n--- Collections (Listas e Dicionários) ---")
# ================================================#

# List (Array)
livros = ['Livro 1', 'Livro 2', 'Livro 3']
livros.append('Livro 4')
livros.insert(0, 'Livro 0')
print(f"Lista de livros: {livros}")
print(f"Primeiro livro: {livros[0]}")
print(f"Último livro: {livros[-1]}")
print(f"Total de livros: {len(livros)}")
livro_removido = livros.pop()
print(f"Livro removido: {livro_removido}")
print(f"Lista atualizada: {livros}")

# Dict (Hash)
animais = {'ave': 'Tucano', 'mamifero': 'Cachorro', 'reptil': 'Lagarto'}
print(f"\nDicionário de animais: {animais}")
print(f"Chaves: {list(animais.keys())}")
print(f"Valores: {list(animais.values())}")
del animais['reptil']
print(f"Dicionário atualizado: {animais}")


# ================================================#
print("\n--- Iteradores de Alto Nível ---")
# ================================================#

# List Comprehensions (equivalente a map e select/filter)
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# map: multiplicar cada número por 5
novos_numeros = [x * 5 for x in numeros]
print(f"Map (x * 5): {novos_numeros}")

# select/filter: pegar números maiores que 5
selecionados = [n for n in numeros if n > 5]
print(f"Filter (n > 5): {selecionados}")


# ================================================#
print("\n--- POO (Programação Orientada a Objetos) ---")
# ================================================#


class Animal:
    def dormir(self):
        return "Zzzzz"


class Gato(Animal):
    def miar(self):
        return "miau"


gato = Gato()
print(f"\nExemplo de Herança: O gato diz '{gato.miar()}' "
      f"e quando dorme faz '{gato.dormir()}'")


class Pessoa:
    # Construtor da classe
    def __init__(self, nome: str, idade: int):
        self.nome = nome  # Atributo de instância
        self.idade = idade

    def apresentar(self):
        return f"Olá, meu nome é {self.nome} e eu tenho {self.idade} anos."


pessoa = Pessoa('Ezequiel', 23)
print(f"Exemplo de Classe e Objeto: {pessoa.apresentar()}")
