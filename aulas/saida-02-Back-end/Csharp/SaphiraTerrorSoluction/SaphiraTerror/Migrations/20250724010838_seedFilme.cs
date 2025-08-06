using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SaphiraTerror.Migrations
{
    /// <inheritdoc />
    public partial class seedFilme : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql("INSERT INTO Filme (Titulo, Produtora, UrlImagem, ClassificacaoId, GeneroId) VALUES('Carnificina Urbana', 'Bloody Pictures', 'img/carnificina.jpg', 3, 1),('O Massacre da Estrada', 'No Hope Films', 'img/massacre.jpg', 3, 1),('Sangue no Asfalto', 'DarkSide', 'img/sangue.jpg', 3, 1),('Banho de Sangue', 'Gutsy Films', 'img/banho.jpg', 3, 1),('Rituais de Carne', 'TerrorCult', 'img/rituais.jpg', 3, 1),('A Volta dos Mortos', 'Undead Studios', 'img/voltamortos.jpg', 2, 2),('Zumbis do Sertão', 'Nordeste Terror', 'img/sertaozumbi.jpg', 2, 2),('Dead School', 'Apocalipse Jr.', 'img/deadschool.jpg', 2, 2),('Zumbis Urbanos', 'Doom Films', 'img/urbanos.jpg', 3, 2),('Fuga do Necrotério', 'FearWorks', 'img/necrot.jpg', 3, 2),('Dentro da Mente', 'Suspense Studios', 'img/mente.jpg', 1, 3),('Silêncio Mortal', 'Mind Games', 'img/silencio.jpg', 1, 3),('Reflexo do Medo', 'Mirror Films', 'img/reflexo.jpg', 1, 3),('Traumas', 'DeepFear', 'img/traumas.jpg', 3, 3),('Distúrbio', 'NoSleep Prod.', 'img/disturbio.jpg', 3, 3),('A Gravação Proibida', 'FoundLost Films', 'img/proibida.jpg', 1, 4),('Sinais na Floresta', 'Hidden Horror', 'img/floresta.jpg', 1, 4),('Filme Perdido', 'DarkCam', 'img/perdido.jpg', 3, 4),('Última Transmissão', 'Signal Films', 'img/transmissao.jpg', 3, 4),('No Escuro', 'CamMedo', 'img/escuro.jpg', 3, 4),('Metamorfose Humana', 'Flesh Films', 'img/metamorfose.jpg', 3, 5),('Corpos em Mutação', 'Mutation Studios', 'img/mutacao.jpg', 3, 5),('Vírus de Carne', 'Biopunk Terror', 'img/virus.jpg', 3, 5),('O Inchaço', 'Pustula Pictures', 'img/inchaco.jpg', 3, 5),('Parasita', 'Corruption Films', 'img/parasita.jpg', 3, 5);");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
