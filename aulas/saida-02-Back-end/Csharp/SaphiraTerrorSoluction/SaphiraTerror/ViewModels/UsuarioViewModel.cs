using Microsoft.AspNetCore.Mvc.Rendering;

namespace SaphiraTerror.ViewModels
{
    public class UsuarioViewModel
    {
        public int IdUsuario { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public DateTime DataNascimento { get; set; }
        public int TipoUsuarioId { get; set; }

        public IEnumerable<SelectListItem>? TipoUsuario { get; set; }
        public IEnumerable<SelectListItem> TiposUsuario { get; internal set; }
    }
}
