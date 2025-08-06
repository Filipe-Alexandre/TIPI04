using Microsoft.EntityFrameworkCore;
using SaphiraTerror.Data;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;

namespace SaphiraTerror.Repositories
{
    //campo de apoio
    public class FilmeRepository : IFilmeRepository
    {
        private readonly SaphiraTerrorDbContext _context;

        public FilmeRepository(SaphiraTerrorDbContext context)
        {
            _context = context;
        }

        //Adicionar filmes
        public async Task AddAsync(Filme filme)
        {
            await _context.Filmes.AddAsync(filme);
            await _context.SaveChangesAsync();
        }

        //Deletar Filme
        public async Task DeleteAddAsync(int id)
        {
            var filme = await _context.Filmes.FirstOrDefaultAsync(f => f.IdFilme == id);
            if (filme != null)
            {
                _context.Filmes.Remove(filme);
                await _context.SaveChangesAsync();
            }
        }

        public Task DeleteAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task<List<Filme>> GetAllAsync()
        {
            throw new NotImplementedException();
        }

        //Listar todos os filmes
        public async Task<List<Filme>> GetAllsSync()
        {
            return await _context.Filmes.Include(f => f.Genero).Include(f => f.Classificacao).ToListAsync();
        }

        //Busca por id
        public async Task<Filme> GetAllsSync(int id)
        {
            return await _context.Filmes.Include(f => f.Genero).Include(f => f.Classificacao).FirstOrDefaultAsync(f => f.IdFilme == id);
        }

        public Task<Filme> GetByIdAsync(int id)
        {
            throw new NotImplementedException();
        }

        //Editar filme
        public async Task UpdateAsync(Filme filme)
        {
            _context.Filmes.Update(filme);
            await _context.SaveChangesAsync();
        }
    }
}
