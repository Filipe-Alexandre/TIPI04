using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SaphiraTerror.Models;

[Table("Genero")]
public class Genero
{
    [Key]
    public int IdGenero { get; set; }

    [Required(ErrorMessage = "Campo Obrigatório!")]
    [Display(Name = "Gênero")]
    [StringLength(150)]
    public string DescricaoGenero { get; set; }

    public List<Filme> Filmes { get; set; } = new List<Filme>();
}
