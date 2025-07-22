using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SaphiraTerror.Models;

[Table("TipoUsuario")]
public class TipoUsuario
{
    [Key]
    public int IdTipoUsuario { get; set; }

    [Required(ErrorMessage = "Campo Obrigatório!")]
    [Display(Name = "Tipo de Usuário")]
    [StringLength(150)]
    public string DescricaoTipoUsuario { get; set; }

    public List<Usuario> Usuarios { get; set; } = new List<Usuario>();
}
