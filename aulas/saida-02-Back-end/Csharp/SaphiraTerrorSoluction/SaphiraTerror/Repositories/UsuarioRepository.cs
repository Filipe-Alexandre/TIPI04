using Microsoft.EntityFrameworkCore;
using SaphiraTerror.Data;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;

namespace SaphiraTerror.Repositories
{
    public class UsuarioRepository : IUsuarioRepository
    {
        //injeção de dependencia
        private readonly SaphiraTerrorDbContext _context;
        public UsuarioRepository(SaphiraTerrorDbContext context)
        {
            _context = context;
        }

        //create
        public async Task AddAsync(Usuario usuario)
        {
            await _context.AddAsync(usuario);
            await _context.SaveChangesAsync();
        }

        //read
        public async Task<List<Usuario>> GetAllAsync()
        {
            return await _context.Usuarios.Include(u => u.TipoUsuario).ToListAsync();
        }

        //read - ativos
        public async Task<List<Usuario>> GetAllAtivosAsync()
        {
            return await _context.Usuarios.Include(u => u.TipoUsuario).Where(u => u.Ativo).ToListAsync();
        }

        //search by id
        public async Task<Usuario> GetByIdAsync(int id)
        {
            return await _context.Usuarios.Include(u => u.TipoUsuario).FirstOrDefaultAsync(u => u.IdUsuario == id);
        }

        //inativar
        public async Task InativarAsync(int id)
        {
            var usuario = await _context.Usuarios.FindAsync(id);
            if(usuario != null && usuario.Ativo)
            {
                usuario.Ativo = false;
                await _context.SaveChangesAsync();
            }
        }

        //reativar
        public async Task ReativarAsync(int id)
        {
            var usuario = await _context.Usuarios.FindAsync(id);
            if(usuario != null && !usuario.Ativo)
            {
                usuario.Ativo = true;
                await _context.SaveChangesAsync();
            }
        }

        //update
        public async Task UpdateAsync(Usuario usuario)
        {
            _context.Update(usuario);
            await _context.SaveChangesAsync();
        }

        //valida login
        public async Task<Usuario>? ValidarLoginAsync(string email, string senha)
        {
            return await _context.Usuarios.Include(u => u.TipoUsuario).FirstOrDefaultAsync(u => u.Email == email && u.Senha == senha);
        }
    }
}
