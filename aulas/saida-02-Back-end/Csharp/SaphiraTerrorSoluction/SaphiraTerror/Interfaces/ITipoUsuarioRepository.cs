using SaphiraTerror.Models;

namespace SaphiraTerror.Interfaces
{
    public interface ITipoUsuarioRepository
    {
        Task<List<TipoUsuario>> GetAllAsync();
        Task<TipoUsuario> GetByIdAsync(int id);
        Task AddAsync(TipoUsuario tipoUsuario);
        Task UpdateAsync(TipoUsuario tipoUsuario);
        Task DeleteAsync(int id);
    }
}
