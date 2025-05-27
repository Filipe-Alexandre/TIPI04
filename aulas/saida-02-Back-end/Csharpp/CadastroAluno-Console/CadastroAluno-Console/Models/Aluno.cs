using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CadastroAluno_Console.Models
{
    public class Aluno
    {
        
        public int Id { get; set; }
        public string Nome { get; set; }
        public string CPF { get; set; }
        public string Curso { get; set; }
        public DateTime DataNascimento { get; set; }

        public Aluno(int id, string nome, string cpf, string curso, DateTime dataNascimento)

        {
            Id = id;
            Nome = nome;
            CPF = cpf;
            Curso = curso;
            DataNascimento = dataNascimento;
        }

    
    }
    
    
}
