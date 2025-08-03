<?php
// Guia de Referência Rápida: Exemplos de Código PHP

echo "### Guia de Referência Rápida: PHP ###\n";

//================================================//
echo "\n--- Básico: Tipos de Dados e Operadores ---\n";
//================================================//

// Interpolação de String (aspas duplas)
$nome = "Ezequiel";
echo "Olá, meu nome é {$nome}\n";

//================================================//
echo "\n--- Estrutura de Condição ---\n";
//================================================//

// if / elseif / else
$nome_condicao = "Ezequiel";
if ($nome_condicao == "Ezequiel") {
    echo "Meu nome é Ezequiel\n";
} elseif ($nome_condicao == "André") {
    echo "Meu nome é André\n";
} else {
    echo "Não sei quem sou...\n";
}

// switch / case
$status_code = 200;
switch ($status_code) {
    case 200:
    case 201:
        echo "Sucesso\n";
        break;
    case 404:
        echo "Não encontrado\n";
        break;
    default:
        echo "Outro status\n";
}

//================================================//
echo "\n--- Estrutura de Iteração (Loops) ---\n";
//================================================//

// foreach loop (para iterar sobre arrays)
$frutas = ["Maçã", "Uva", "Banana"];
echo "Iterando sobre um array com foreach:\n";
foreach ($frutas as $fruta) {
    echo "- {$fruta}\n";
}

// for loop com contador
echo "\nLoop com for:\n";
for ($i = 0; $i < 3; $i++) {
    echo "Hello World! - {$i}\n";
}

//================================================//
echo "\n--- Collections (Arrays) ---\n";
//================================================//

// Array Indexado
$livros = ['Livro 1', 'Livro 2', 'Livro 3'];
array_push($livros, 'Livro 4');    // Adiciona no final
array_unshift($livros, 'Livro 0'); // Adiciona no início
print_r($livros);

// Array Associativo (Hash/Dicionário)
$animais = ['ave' => 'Tucano', 'mamifero' => 'Cachorro'];
print_r($animais);
echo "A ave é: " . $animais['ave'] . "\n";
unset($animais['ave']); // Remove um item
print_r($animais);

//================================================//
echo "\n--- Funções de Alto Nível ---";
//================================================//

// array_map (para transformar cada item)
$numeros = [1, 2, 3, 4, 5];
$novos_numeros = array_map(function($n) { return $n * 5; }, $numeros);
echo "\nMap (n * 5): ";
print_r($novos_numeros);

// array_filter (para filtrar)
$selecionados = array_filter($numeros, function($n) { return $n > 3; });
echo "Filter (n > 3): ";
print_r($selecionados);

//================================================//
echo "\n--- POO (Programação Orientada a Objetos) ---\n";
//================================================//

class Animal {
    public function dormir() {
        return "Zzzzz";
    }
}

class Gato extends Animal { // Herança com 'extends'
    public function miar() {
        return "miau";
    }
}

$gato = new Gato();
echo "Exemplo de Herança: O gato diz '{$gato->miar()}' e quando dorme faz '{$gato->dormir()}'\n";

class Pessoa {
    public string $nome;
    public int $idade;

    // Construtor da classe
    public function __construct(string $nome, int $idade) {
        $this->nome = $nome;   // Atributo de instância
        $this->idade = $idade;
    }

    public function apresentar() {
        return "Olá, meu nome é {$this->nome} e eu tenho {$this->idade} anos.";
    }
}

$pessoa = new Pessoa('Ezequiel', 23);
echo "Exemplo de Classe e Objeto: " . $pessoa->apresentar() . "\n";
echo "Acesso direto ao atributo nome: " . $pessoa->nome . "\n";
?>