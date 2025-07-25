Guia de Referência Rápida: Python
Básico
 * Tipos de Dados Fundamentais:
   * int (Inteiro): 10, -50, 12345
   * float (Ponto Flutuante): 3.14, 2.50, -99.9
   * bool (Booleano): True, False
   * str (String/Texto): "Olá, Mundo!", 'Qualquer texto'
   * list (Lista): [1, "maçã", True] (mutável, ordenada)
   * tuple (Tupla): (1, "maçã", True) (imutável, ordenada)
   * dict (Dicionário): {'chave': 'valor', 'idade': 25} (chave-valor)
   * set (Conjunto): {1, 2, 3} (elementos únicos, não ordenado)
   * NoneType (Nenhum): None (representa a ausência de valor)
 * Operadores:
   * + (adição)
   * - (subtração)
   * * (multiplicação)
   * / (divisão de ponto flutuante, ex: 5 / 2 = 2.5)
   * // (divisão inteira, ex: 5 // 2 = 2)
   * % (módulo/resto da divisão)
   * ** (exponenciação)
 * Métodos Comuns em Strings:
   * .upper() – transforma em maiúsculas
   * .lower() – transforma em minúsculas
   * [::-1] – uma forma de "fatia" (slice) para inverter a string
   * .capitalize() – primeira letra maiúscula
   * + ou f-string – para concatenar strings
   * Interpolação (f-string): O método moderno e preferido.
     nome = "Ezequiel"
print(f"Olá, meu nome é {nome}")

Estrutura de Condição
 * if / elif / else: (Note o uso de : e da indentação)
   nome = "Ezequiel"

if nome == "Ezequiel":
    print("Meu nome é Ezequiel")
elif nome == "André":
    print("Meu nome é André")
else:
    print("Não sei quem sou...")

 * unless (Equivalente): Python não tem unless. A forma "Pythônica" é usar if not.
   idade = 20

if not idade < 18:  # ou de forma mais legível: if idade >= 18:
    print("Você é maior de idade")
else:
    print("Você é menor de idade")

 * case (Equivalente - Python 3.10+): match / case
   mes = int(input("Digite o número do mês: "))

match mes:
    case 1 | 2 | 3:
        print("Primeiro trimestre")
    case 4 | 5 | 6:
        print("Segundo trimestre")
    case 7 | 8 | 9:
        print("Terceiro trimestre")
    case 10 | 11 | 12:
        print("Quarto trimestre")
    case _:  # O caso padrão
        print("Valor não encontrado")

Estrutura de Iteração (Loops)
 * for: A forma mais comum de iterar sobre qualquer coleção.
   frutas = ["Maçã", "Uva", "Banana"]

for fruta in frutas:
    print(fruta)

 * while: Executa enquanto uma condição for verdadeira.
   num = 1
while num < 10:
    print(num)
    num += 1

 * .times (Equivalente): Python não tem .times. Usa-se for com range. O _ é uma convenção para indicar que não nos importamos com a variável do contador.
   x = 5
for i in range(x):
    print(f"{i} - Hello World!")

 * loop do (Equivalente): Um loop infinito com break.
   count = 0
while True:
    print(f"Contador: {count}")
    if count == 10:
        break
    count += 1

Collections
 * list (Array):
   livros = ['Livro 1', 'Livro 2', 'Livro 3']
livros.append('Livro 4')      # Adiciona no final
livros.insert(0, 'Livro 0') # Adiciona em uma posição específica
primeiro_livro = livros[0]    # Acessa o primeiro
ultimo_livro = livros[-1]     # Acessa o último
print(len(livros))            # Conta os itens
if 'Livro 2' in livros:       # Verifica se existe
    print("Encontrado!")
livro_removido = livros.pop() # Remove o último

 * dict (Hash):
   animais = {'ave': 'Tucano', 'mamifero': 'Cachorro', 'reptil': 'Lagarto'}
print(animais.keys())      # Pega as chaves
print(animais.values())    # Pega os valores
del animais['reptil']      # Deleta um item
print(len(animais))        # Conta os pares chave-valor

Iteradores de Alto Nível (Forma "Pythônica")
 * Iterando sobre list e dict: O for loop é o padrão.
   nomes = ['Marcos', 'João', 'Marcelo']
for nome in nomes:
    print(nome)

cursos = {'Curso 1': 'Ruby', 'Curso 2': 'Go', 'Curso 3': 'Python'}
for chave, valor in cursos.items():
    print(f"{chave} - {valor}")

 * map (Equivalente): A forma mais comum é usar List Comprehensions.
   numeros = [2, 3, 4, 5]
novos_numeros = [x * 5 for x in numeros] # Cria uma nova lista
print(novos_numeros)

 * select (Equivalente a filter): Também se usa List Comprehensions.
   numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
selecionados = [n for n in numeros if n > 5] # Cria uma nova lista com os itens que passam no filtro
print(selecionados)

Gerenciamento de Pacotes (pip)
 * Comando: pip install <biblioteca> (ex: pip install pandas)
 * Arquivo de dependências: requirements.txt
 * Como usar:
   * pip install -r requirements.txt (Instala todas as bibliotecas listadas no arquivo)
   * pip freeze > requirements.txt (Gera o arquivo com as bibliotecas do seu ambiente)
POO (Programação Orientada a Objetos)
 * Classe e Objeto:
   class Televisao:
    def ligar(self):
        return "Televisão ligada"

    def desligar(self):
        return "Televisão desligada"

tv_sala = Televisao()
print(tv_sala.desligar())

 * Herança:
   class Animal:
    def dormir(self):
        return "Zzzzz"

class Gato(Animal):
    def miar(self):
        return "miau"

gato = Gato()
print(gato.dormir()) # Herdou o método da classe Animal
print(gato.miar())

 * Variáveis (Convenções):
   * var (local)
   * self.var (de instância/atributo)
   * VAR_GLOBAL (global, por convenção em maiúsculas)
   * Python não tem uma forma estrita de variáveis de classe como @@var.
 * Atributos e Construtor (__init__): Python não tem um atalho como attr_accessor. O acesso a atributos é direto, e o construtor é o método especial __init__.
   class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

    def apresentar(self):
        return f"Olá, meu nome é {self.nome} e eu tenho {self.idade} anos."

pessoa = Pessoa('Ezequiel', 23) # O __init__ é chamado aqui
print(pessoa.apresentar())
print(pessoa.nome) # Acesso direto ao atributo
