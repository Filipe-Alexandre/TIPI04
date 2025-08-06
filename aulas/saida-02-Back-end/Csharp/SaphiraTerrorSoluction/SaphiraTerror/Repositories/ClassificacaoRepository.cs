using Microsoft.EntityFrameworkCore;
using SaphiraTerror.Data;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;

namespace SaphiraTerror.Repositories
{
    public class ClassificacaoRepository : IClassificacaoRepository
    {
        //campo de apoio
        private readonly SaphiraTerrorDbContext _context;

        //injeção de dependencia no construtor
        public ClassificacaoRepository(SaphiraTerrorDbContext context)
        {
            _context = context;
        }
        public Task AddAsync(Classificacao classificacao)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(int id)
        {
            throw new NotImplementedException();
        }

        // Listar todas as classificações
        public async Task<List<Classificacao>> GetAllAsync()
        {
            return await _context.Classificacoes.ToListAsync();
        }

        public Task<Classificacao> GetByIdAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(Classificacao classificacao)
        {
            throw new NotImplementedException();
        }
    }
}
