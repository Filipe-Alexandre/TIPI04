    using SaphiraTerror.Models;

namespace SaphiraTerror.Interfaces
{
    public interface IFilmeRepository
    {
        Task<List<Filme>> GetAllAsync();
        Task<Filme> GetByIdAsync(int id);
        Task AddAsync(Filme filme);
        Task UpdateAsync(Filme filme);
        Task DeleteAsync(int id);
    }
}
