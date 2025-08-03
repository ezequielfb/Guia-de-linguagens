#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <algorithm>

// Guia de Referência Rápida: Exemplos de Código C++

// --- POO (Programação Orientada a Objetos) ---
class Animal {
public:
    std::string dormir() {
        return "Zzzzz";
    }
};

class Gato : public Animal { // Herança com ':'
public:
    std::string miar() {
        return "miau";
    }
};

class Pessoa {
public:
    std::string nome;
    int idade;

    // Construtor da classe
    Pessoa(std::string n, int i) {
        nome = n;
        idade = i;
    }

    std::string apresentar() {
        return "Olá, meu nome é " + nome + " e eu tenho " + std::to_string(idade) + " anos.";
    }
};

int main() {
    std::cout << "### Guia de Referência Rápida: C++ ###" << std::endl;
    
    //================================================//
    std::cout << "\n--- Básico: Tipos de Dados e Operadores ---" << std::endl;
    //================================================//

    std::string nome = "Ezequiel";
    std::cout << "Olá, meu nome é " << nome << std::endl;

    //================================================//
    std::cout << "\n--- Collections (Vector e Map) ---" << std::endl;
    //================================================//

    // std::vector (Array dinâmico)
    std::vector<std::string> livros = {"Livro 1", "Livro 2", "Livro 3"};
    livros.push_back("Livro 4"); // Adiciona no final
    std::cout << "Primeiro livro: " << livros[0] << std::endl;
    
    // std::map (Dicionário/Hash)
    std::map<std::string, std::string> animais;
    animais["ave"] = "Tucano";
    animais["mamifero"] = "Cachorro";
    std::cout << "A ave é: " << animais["ave"] << std::endl;
    
    //================================================//
    std::cout << "\n--- Iteradores de Alto Nível ---" << std::endl;
    //================================================//
    
    std::vector<int> numeros = {1, 2, 3, 4, 5};
    std::vector<int> novos_numeros;
    
    // map (std::transform com lambda)
    std::transform(numeros.begin(), numeros.end(), std::back_inserter(novos_numeros), [](int n){ return n * 5; });
    std::cout << "Map (n * 5): ";
    for(int n : novos_numeros) std::cout << n << " ";
    std::cout << std::endl;
    
    //================================================//
    std::cout << "\n--- POO (Programação Orientada a Objetos) ---" << std::endl;
    //================================================//
    
    Gato gato;
    std::cout << "Exemplo de Herança: O gato diz '" << gato.miar() << "' e quando dorme faz '" << gato.dormir() << "'" << std::endl;
    
    Pessoa pessoa("Ezequiel", 23);
    std::cout << "Exemplo de Classe e Objeto: " << pessoa.apresentar() << std::endl;

    return 0;
}