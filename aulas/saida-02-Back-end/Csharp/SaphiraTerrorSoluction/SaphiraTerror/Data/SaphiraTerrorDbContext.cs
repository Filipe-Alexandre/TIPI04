using Microsoft.EntityFrameworkCore;
using SaphiraTerror.Models;

namespace SaphiraTerror.Data;

//Classe reoresenta o contexto da base de dados
//controla as enridades e mapeamento das tabelas
public class SaphiraTerrorDbContext : DbContext
{
    //Construtor:
    public SaphiraTerrorDbContext(DbContextOptions<SaphiraTerrorDbContext> options) : base(options)
    { }

    //DBSet: Representam as tabelas
    public DbSet<Filme> Filmes { get; set; }
    public DbSet<Genero> Generos { get; set; }
    public DbSet<Classificacao> Classificacoes { get; set; }
    public DbSet<Usuario> Usuarios { get; set; }
    public DbSet<TipoUsuario> TipoUsuarios { get; set; }

    //Método opcional para configurar um determinado modelo
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<Usuario>().Property(u=> u.Ativo).HasDefaultValue(true);
    }
}
