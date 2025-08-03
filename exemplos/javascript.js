// Guia de Referência Rápida: Exemplos de Código JavaScript (ES6+)

console.log("### Guia de Referência Rápida: JavaScript ###");

//================================================//
console.log("\n--- Básico: Tipos de Dados e Operadores ---");
//================================================//

// Interpolação de String (Template Literals)
const nome = "Ezequiel";
console.log(`Olá, meu nome é ${nome}`);


//================================================//
console.log("\n--- Estrutura de Condição ---");
//================================================//

// if / else if / else
const nomeCondicao = "Ezequiel";
if (nomeCondicao === "Ezequiel") {
    console.log("Meu nome é Ezequiel");
} else if (nomeCondicao === "André") {
    console.log("Meu nome é André");
} else {
    console.log("Não sei quem sou...");
}

// if not (equivalente a 'unless')
const idade = 20;
if (!(idade < 18)) { // ou de forma mais legível: if (idade >= 18)
    console.log("Você é maior de idade");
} else {
    console.log("Você é menor de idade");
}

// switch / case
const statusCode = 200;
switch (statusCode) {
    case 200:
    case 201:
        console.log("Sucesso");
        break;
    case 404:
        console.log("Não encontrado");
        break;
    default: // Caso padrão
        console.log("Outro status");
}


//================================================//
console.log("\n--- Estrutura de Iteração (Loops) ---");
//================================================//

// for...of loop (para iterar sobre valores de um array)
const frutas = ["Maçã", "Uva", "Banana"];
console.log("Iterando sobre um array com for...of:");
for (const fruta of frutas) {
    console.log(`- ${fruta}`);
}

// while loop
let num = 1;
console.log("\nContando com while:");
let whileResult = '';
while (num <= 5) {
    whileResult += `${num} `;
    num++;
}
console.log(whileResult.trim());

// for com contador (equivalente a .times)
console.log("\nLoop com contador:");
for (let i = 0; i < 3; i++) {
    console.log(`Hello World! - ${i}`);
}

// loop "infinito" com break
console.log("\nLoop com break:");
let count = 0;
while (true) {
    console.log(`Contador: ${count}`);
    if (count === 3) {
        break;
    }
    count++;
}


//================================================//
console.log("\n--- Collections (Arrays e Objetos) ---");
//================================================//

// Array (Lista)
let livros = ['Livro 1', 'Livro 2', 'Livro 3'];
livros.push('Livro 4');      // Adiciona no final
livros.unshift('Livro 0'); // Adiciona no início
console.log(`Lista de livros: [${livros.join(', ')}]`);
console.log(`Primeiro livro: ${livros[0]}`);
console.log(`Último livro: ${livros[livros.length - 1]}`);
console.log(`Total de livros: ${livros.length}`);
const livroRemovido = livros.pop(); // Remove o último
console.log(`Livro removido: ${livroRemovido}`);
console.log(`Lista atualizada: [${livros.join(', ')}]`);

// Object (Dicionário/Hash)
let animais = { ave: 'Tucano', mamifero: 'Cachorro', reptil: 'Lagarto' };
console.log(`\nObjeto de animais:`, animais);
console.log(`Chaves: ${Object.keys(animais)}`);
console.log(`Valores: ${Object.values(animais)}`);
delete animais.reptil;
console.log(`Objeto atualizado:`, animais);


//================================================//
console.log("\n--- Iteradores de Alto Nível ---");
//================================================//

// .forEach (para iterar)
const cursos = { 'Curso 1': 'Ruby', 'Curso 2': 'Go', 'Curso 3': 'Python' };
Object.entries(cursos).forEach(([chave, valor]) => {
    console.log(`${chave} - ${valor}`);
});

// .map (para transformar cada item)
const numeros = [1, 2, 3, 4, 5];
const novosNumeros = numeros.map(n => n * 5);
console.log(`\nMap (n * 5): [${novosNumeros.join(', ')}]`);

// .filter (para filtrar)
const selecionados = numeros.filter(n => n > 3);
console.log(`Filter (n > 3): [${selecionados.join(', ')}]`);


//================================================//
console.log("\n--- POO (Programação Orientada a Objetos) ---");
//================================================//

class Animal {
    dormir() {
        return "Zzzzz";
    }
}

class Gato extends Animal { // Herança com a palavra 'extends'
    miar() {
        return "miau";
    }
}

const gato = new Gato();
console.log(`\nExemplo de Herança: O gato diz '${gato.miar()}' e quando dorme faz '${gato.dormir()}'`);

class Pessoa {
    // Construtor da classe
    constructor(nome, idade) {
        this.nome = nome;   // Atributo de instância
        this.idade = idade;
    }

    apresentar() {
        return `Olá, meu nome é ${this.nome} e eu tenho ${this.idade} anos.`;
    }
}

const pessoa = new Pessoa('Ezequiel', 23);
console.log(`Exemplo de Classe e Objeto: ${pessoa.apresentar()}`);
console.log(`Acesso direto ao atributo nome: ${pessoa.nome}`);