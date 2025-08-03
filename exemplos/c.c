#include <stdio.h>
#include <string.h>

// Guia de Referência Rápida: Exemplos de Código C

// C é uma linguagem procedural, então o conceito de classes/objetos é simulado com structs e funções.

// --- POO (Simulado) ---
// Definindo uma "classe" Animal com um struct
typedef struct {
    // C não tem métodos dentro de structs, apenas dados
} Animal;

// Função que opera em um Animal
void Animal_dormir(Animal* animal) {
    printf("Zzzzz\n");
}

// Definindo uma "subclasse" Gato que "herda" de Animal
typedef struct {
    Animal base; // Composição para simular herança
} Gato;

// Função específica para Gato
void Gato_miar(Gato* gato) {
    printf("miau\n");
}

int main() {
    printf("### Guia de Referência Rápida: C ###\n");

    //================================================//
    printf("\n--- Estrutura de Condição ---\n");
    //================================================//
    
    int idade = 20;
    if (idade >= 18) {
        printf("Você é maior de idade\n");
    } else {
        printf("Você é menor de idade\n");
    }

    //================================================//
    printf("\n--- Estrutura de Iteração (Loops) ---\n");
    //================================================//

    // for loop
    printf("Loop com for:\n");
    for (int i = 0; i < 3; i++) {
        printf("Hello World! - %d\n", i);
    }

    //================================================//
    printf("\n--- Collections (Arrays) ---\n");
    //================================================//
    
    // Arrays em C têm tamanho fixo
    char* frutas[3] = {"Maçã", "Uva", "Banana"};
    printf("A primeira fruta é: %s\n", frutas[0]);
    
    //================================================//
    printf("\n--- POO (Simulada com Structs) ---\n");
    //================================================//
    
    Gato meu_gato;
    printf("O gato faz: ");
    Gato_miar(&meu_gato);
    printf("O gato dormindo: ");
    // Chamando a função "herdada"
    Animal_dormir((Animal*)&meu_gato);

    return 0;
}