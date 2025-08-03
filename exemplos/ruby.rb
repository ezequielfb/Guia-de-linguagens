# -*- coding: utf-8 -*-
# Guia de Referência Rápida: Exemplos de Código Ruby

puts "### Guia de Referência Rápida: Ruby ###"

#================================================#
puts "\n--- Básico: Tipos de Dados e Operadores ---"
#================================================#

# Interpolação de String
nome = "Ezequiel"
puts "Olá, meu nome é #{nome}"


#================================================#
puts "\n--- Estrutura de Condição ---"
#================================================#

# if / elsif / else
nome_condicao = "Ezequiel"
if nome_condicao == "Ezequiel"
  puts "Meu nome é Ezequiel"
elsif nome_condicao == "André"
  puts "Meu nome é André"
else
  puts "Não sei quem sou..."
end

# unless (executa se a condição for falsa)
idade = 20
unless idade < 18
  puts "Você é maior de idade"
else
  puts "Você é menor de idade"
end

# case
status_code = 200
case status_code
when 200, 201
  puts "Sucesso"
when 404
  puts "Não encontrado"
else
  puts "Outro status"
end


#================================================#
puts "\n--- Estrutura de Iteração (Loops) ---"
#================================================#

# for loop (menos comum em Ruby, prefere-se .each)
frutas = ["Maçã", "Uva", "Banana"]
puts "Iterando sobre um array com for:"
for fruta in frutas
  puts "- #{fruta}"
end

# while loop
num = 1
puts "\nContando com while:"
while num <= 5
  print "#{num} "
  num += 1
end
puts # para pular a linha

# .times (forma idiomática para repetir N vezes)
puts "\nLoop com .times:"
3.times do |i|
  puts "Hello World! - #{i}"
end

# loop do (loop infinito com break)
puts "\nLoop com break:"
count = 0
loop do
  puts "Contador: #{count}"
  break if count == 3
  count += 1
end


#================================================#
puts "\n--- Collections (Arrays e Hashes) ---"
#================================================#

# Array (Lista)
livros = ['Livro 1', 'Livro 2', 'Livro 3']
livros.push('Livro 4')      # Adiciona no final
livros.unshift('Livro 0') # Adiciona no início
puts "Lista de livros: #{livros.inspect}"
puts "Primeiro livro: #{livros.first}"
puts "Último livro: #{livros.last}"
puts "Total de livros: #{livros.length}"
livro_removido = livros.pop # Remove o último
puts "Livro removido: #{livro_removido}"
puts "Lista atualizada: #{livros.inspect}"

# Hash (Dicionário)
animais = { ave: 'Tucano', mamifero: 'Cachorro', reptil: 'Lagarto' }
puts "\nHash de animais: #{animais.inspect}"
puts "Chaves: #{animais.keys.inspect}"
puts "Valores: #{animais.values.inspect}"
animais.delete(:reptil)
puts "Hash atualizado: #{animais.inspect}"


#================================================#
puts "\n--- Iteradores de Alto Nível ---"
#================================================#

# .each (para iterar)
cursos = { 'Curso 1' => 'Ruby', 'Curso 2' => 'Go', 'Curso 3' => 'Python' }
cursos.each do |chave, valor|
  puts "#{chave} - #{valor}"
end

# .map (para transformar cada item)
numeros = [1, 2, 3, 4, 5]
novos_numeros = numeros.map { |n| n * 5 }
puts "\nMap (n * 5): #{novos_numeros.inspect}"

# .select (para filtrar)
selecionados = numeros.select { |n| n > 3 }
puts "Select (n > 3): #{selecionados.inspect}"


#================================================#
puts "\n--- POO (Programação Orientada a Objetos) ---"
#================================================#

class Animal
  def dormir
    "Zzzzz"
  end
end

class Gato < Animal # Herança com o sinal '<'
  def miar
    "miau"
  end
end

gato = Gato.new
puts "\nExemplo de Herança: O gato diz '#{gato.miar}' e quando dorme faz '#{gato.dormir}'"

class Pessoa
  # Atalho para criar getters e setters
  attr_accessor :nome, :idade

  # Construtor da classe
  def initialize(nome, idade)
    @nome = nome   # Variável de instância
    @idade = idade
  end

  def apresentar
    "Olá, meu nome é #{@nome} e eu tenho #{@idade} anos."
  end
end

pessoa = Pessoa.new('Ezequiel', 23)
puts "Exemplo de Classe e Objeto: #{pessoa.apresentar}"
puts "Acesso direto ao atributo nome: #{pessoa.nome}"