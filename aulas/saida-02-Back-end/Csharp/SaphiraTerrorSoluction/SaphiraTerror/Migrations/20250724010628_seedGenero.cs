using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaphiraTerror.Migrations
{
    /// <inheritdoc />
    public partial class seedGenero : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql("INSERT INTO Genero (DescricaoGenero) VALUES ('Gore'),('Zumbi'),('Terror Psicológico'),('Found Footage'),('Body Horror');");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
