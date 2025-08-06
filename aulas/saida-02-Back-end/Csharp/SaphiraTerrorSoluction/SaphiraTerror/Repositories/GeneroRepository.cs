using Microsoft.EntityFrameworkCore;
using SaphiraTerror.Data;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;

namespace SaphiraTerror.Repositories
{
    public class GeneroRepository : IGeneroRepository
    {

        //campo de apoio
        private readonly SaphiraTerrorDbContext _context;

        //injeção de dependencia no construtor
        public GeneroRepository(SaphiraTerrorDbContext context)
        {
            _context = context;
        }

        //todos os generos
        public async Task<List<Genero>> GetAllAsync()
        {
            return await _context.Generos.ToListAsync();
        }

        public Task<Genero> GetByIdAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task AddAsync(Genero genero)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(Genero genero)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(int id)
        {
            throw new NotImplementedException();
        }

    }
}
