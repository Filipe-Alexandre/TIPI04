using Microsoft.AspNetCore.Mvc.Rendering;

namespace SaphiraTerror.ViewModels
{
    public class FilmeViewModel
    {
        public int IdFilmeViewModel { get; set; }
        public string TituloFilmeViewModel { get; set; }
        public string ProdutoraFilmeViewModel { get; set; }
        public string UrlImagemFilmeViewModel { get; set; }

        public IFormFile? ImagemUpload { get; set; }
        
        public int GeneroIdFilmeViewModel { get; set; }
        public int ClassificacaoIdFilmeViewModel { get; set; }

        //Lista para popular os dropdown
        public IEnumerable<SelectListItem>? Classificacoes { get; set; }
        public IEnumerable<SelectListItem>? Generos { get; set; }
    }
}
