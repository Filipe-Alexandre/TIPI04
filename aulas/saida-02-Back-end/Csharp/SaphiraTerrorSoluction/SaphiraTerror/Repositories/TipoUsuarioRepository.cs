using System.Security.Cryptography.X509Certificates;
using Microsoft.EntityFrameworkCore;
using SaphiraTerror.Data;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;

namespace SaphiraTerror.Repositories
{
    public class TipoUsuarioRepository : ITipoUsuarioRepository
    {
        private readonly SaphiraTerrorDbContext _context;
        public TipoUsuarioRepository(SaphiraTerrorDbContext context)
        {
            _context = context;
        }
        public async Task<List<TipoUsuario>> GetAllAsync()
        {
            return await _context.TipoUsuarios.ToListAsync();
        }
        public Task AddAsync(TipoUsuario tipoUsuario)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(TipoUsuario tipoUsuario)
        {
            throw new NotImplementedException();
        }

        public Task<TipoUsuario> GetByIdAsync(int id)
        {
            throw new NotImplementedException();
        }
    }
}
