using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaphiraTerror.Migrations
{
    /// <inheritdoc />
    public partial class seedTipoUsuario : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql("INSERT INTO TipoUsuario (DescricaoTipoUsuario) VALUES ('Administrador'),('Gerente'),('Outros');");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
