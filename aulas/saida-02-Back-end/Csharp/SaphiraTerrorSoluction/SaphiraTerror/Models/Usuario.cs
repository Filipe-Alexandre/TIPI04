using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SaphiraTerror.Models;

[Table("Usuario")]
public class Usuario
{
    [Key]
    public int IdUsuario { get; set; }

    [Required(ErrorMessage = "Campo Obrigatório!")]
    [Display(Name = "Nome")]
    [StringLength(150)]
    public string Nome { get; set; }

    [Required(ErrorMessage = "Campo Obrigatório!")]
    [Display(Name = "Email")]
    [StringLength(150)]
    public string Email { get; set; }

    [Required(ErrorMessage = "Campo Obrigatório!")]
    [Display(Name = "Senha")]
    [StringLength(6)]
    public string Senha { get; set; }

    [Required(ErrorMessage = "Campo Obrigatório!")]
    [Display(Name = "Data de Nascimento")]
    public DateTime DataNascimento { get; set; }

    //Campo de relacionamento
    [Required(ErrorMessage = "Campo Obrigatório!")]
    [Display(Name = "Tipo de Usuário")]
    public int TipoUsuarioId { get; set; }
    public virtual TipoUsuario? TipoUsuario { get; set; }

    //Propriedade de SoftDelete
    [Display(Name = "Ativo")]
    public bool Ativo { get; set; } = true;
}
