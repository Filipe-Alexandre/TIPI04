using System.Security.Cryptography;
using CadastroAluno_Console.Models;

namespace CadastroAluno_Console.Controller
{
    internal class AlunoController
    {
        private List<Aluno> alunos= new();
        private int proximoId = 1;

        public void CadastrarAluno(string nome, string cpf, string curso, DateTime dataNascimento)
        {
            Aluno novoAluno = new(proximoId++, nome, cpf, curso, dataNascimento);
            alunos.Add(novoAluno);
        }

        public List<Aluno> ListarAlunos()
        {
            return alunos;
        }

        public bool AtualizarAluno(int id, string nome, string cpf, string curso, DateTime dataNascimento)
        {
            Aluno aluno = alunos.Find(a => a.Id == id);
            if(aluno == null) return false;
            
            aluno.Nome = nome;
            aluno.CPF = cpf;
            aluno.Curso = curso;
            aluno.DataNascimento = dataNascimento;
            return true;
        }

        public bool ExcluirAluno(int id)
        {
            Aluno aluno = alunos.Find(a => a.Id == id);

            return aluno != null && alunos.Remove(aluno);
        }
    }
}
