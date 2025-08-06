using Microsoft.EntityFrameworkCore;
using SaphiraTerror.Data;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;

namespace SaphiraTerror.Repositories
{
    public class TipoUsuarioRepository : ITipoUsuarioRepository
    {
        //campo de apoio
        private readonly SaphiraTerrorDbContext _context;
        public TipoUsuarioRepository(SaphiraTerrorDbContext context)
        {
            _context = context;
        }

        public Task AddAsync(TipoUsuario tipoUsuario)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(int id)
        {
            throw new NotImplementedException();
        }

        //lista todos os tipos de ususario
        public async Task<List<TipoUsuario>> GetAllAsync()
        {
            return await _context.TipoUsuarios.ToListAsync();
        }

        public Task<TipoUsuario> GetByIdAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(TipoUsuario tipoUsuario)
        {
            throw new NotImplementedException();
        }
    }
}
