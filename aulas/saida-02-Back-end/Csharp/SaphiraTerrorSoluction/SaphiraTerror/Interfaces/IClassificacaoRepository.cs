using SaphiraTerror.Models;

namespace SaphiraTerror.Interfaces
{
    public interface IClassificacaoRepository
    {
        Task<List<Classificacao>> GetAllAsync();
        Task<Classificacao> GetByIdAsync(int id);
        Task AddAsync(Classificacao classificacao);

        Task UpdateAsync(Classificacao classificacao);
        Task DeleteAsync(int id);
    }
}
