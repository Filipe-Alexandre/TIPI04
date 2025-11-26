using SaphiraTerror.Models;

namespace SaphiraTerror.Interfaces
{
    public interface IClassificacaoRepository
    {
        Task<List<Classificacao>> GetAllAsync();

        //stand by
        Task<Classificacao> GetByIdAsync(int id);
        Task AddAsync(Classificacao classificacao);
        Task UpdateAsync(Classificacao classificacao);
        Task DeleteAsync(int id);

    }
}
