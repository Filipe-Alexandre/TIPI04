using Microsoft.EntityFrameworkCore;
using SaphiraTerror.Data;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;

namespace SaphiraTerror.Repositories
{
    public class FilmeRepository : IFilmeRepository
    {
        private readonly SaphiraTerrorDbContext _context;
        public FilmeRepository(SaphiraTerrorDbContext context)
        {
            _context = context;
        }

        //UPDATE
        public async Task UpdateAsync(Filme filme)
        {
            _context.Filmes.Update(filme);
            await _context.SaveChangesAsync();
        }

        //DELETE (Delete)
        public async Task DeleteAsync(int id)
        {
            var filme = await _context.Filmes.FirstOrDefaultAsync(f => f.IdFilme == id);
            if (filme != null)
            {
                _context.Filmes.Remove(filme);
                await _context.SaveChangesAsync();
            }
        }

        //GET ALL (trazer tudo)
        public async Task<List<Filme>> GetAllAsync()
        {
            return await _context.Filmes.Include(f => f.Genero).Include(f => f.Classificacao).ToListAsync();
        }

        //GET BY ID

        public async Task<Filme> GetByIdAsync(int id)
        {
            return await _context.Filmes.Include(f => f.Genero).Include(f => f.Classificacao).FirstOrDefaultAsync(f => f.IdFilme == id);
        }

        //CREATE (Add)

        public async Task AddAsync(Filme filme)
        {
            await _context.Filmes.AddAsync(filme);
            await _context.SaveChangesAsync();
        }
    }
}
