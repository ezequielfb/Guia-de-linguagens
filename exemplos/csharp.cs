// Guia de Referência Rápida: Exemplos de Código C#
using System;
using System.Collections.Generic;
using System.Linq;

public class GuiaCSharp
{
    // --- POO (Programação Orientada a Objetos) ---
    public class Animal
    {
        public string Dormir()
        {
            return "Zzzzz";
        }
    }

    public class Gato : Animal // Herança com ':'
    {
        public string Miar()
        {
            return "miau";
        }
    }

    public class Pessoa
    {
        // Propriedades com getters e setters automáticos
        public string Nome { get; set; }
        public int Idade { get; set; }

        // Construtor
        public Pessoa(string nome, int idade)
        {
            Nome = nome;
            Idade = idade;
        }

        public string Apresentar()
        {
            // Interpolação de string com '$'
            return $"Olá, meu nome é {Nome} e eu tenho {Idade} anos.";
        }
    }

    public static void Main(string[] args)
    {
        Console.WriteLine("### Guia de Referência Rápida: C# ###");

        //================================================//
        Console.WriteLine("\n--- Estrutura de Condição ---");
        //================================================//
        
        int idade = 20;
        if (idade >= 18)
        {
            Console.WriteLine("Você é maior de idade");
        }
        else
        {
            Console.WriteLine("Você é menor de idade");
        }

        //================================================//
        Console.WriteLine("\n--- Estrutura de Iteração (Loops) ---");
        //================================================//
        
        // foreach loop
        var frutas = new List<string> { "Maçã", "Uva", "Banana" };
        Console.WriteLine("Iterando sobre uma lista com foreach:");
        foreach (var fruta in frutas)
        {
            Console.WriteLine($"- {fruta}");
        }

        //================================================//
        Console.WriteLine("\n--- Collections (List e Dictionary) ---");
        //================================================//

        // List<T>
        var livros = new List<string> { "Livro 1", "Livro 2" };
        livros.Add("Livro 3"); // Adiciona no final
        Console.WriteLine($"Primeiro livro: {livros[0]}");

        // Dictionary<TKey, TValue>
        var animais = new Dictionary<string, string>
        {
            ["ave"] = "Tucano",
            ["mamifero"] = "Cachorro"
        };
        Console.WriteLine($"A ave é: {animais["ave"]}");
        
        //================================================//
        Console.WriteLine("\n--- Iteradores de Alto Nível (LINQ) ---");
        //================================================//

        var numeros = new List<int> { 1, 2, 3, 4, 5 };
        
        // map (Select)
        var novosNumeros = numeros.Select(n => n * 5);
        Console.WriteLine($"Map (n * 5): {string.Join(", ", novosNumeros)}");

        // filter (Where)
        var selecionados = numeros.Where(n => n > 3);
        Console.WriteLine($"Filter (n > 3): {string.Join(", ", selecionados)}");
        
        //================================================//
        Console.WriteLine("\n--- POO (Programação Orientada a Objetos) ---");
        //================================================//

        var gato = new Gato();
        Console.WriteLine($"Exemplo de Herança: O gato diz '{gato.Miar()}' e quando dorme faz '{gato.Dormir()}'");

        var pessoa = new Pessoa("Ezequiel", 23);
        Console.WriteLine($"Exemplo de Classe e Objeto: {pessoa.Apresentar()}");
    }
}