using Microsoft.AspNetCore.Mvc;
using SaphiraTerror.Interfaces;
using SaphiraTerror.ViewModels;

namespace SaphiraTerror.Controllers
{
    public class FilmeController : Controller
    {
        //campo de apoio
        private readonly IFilmeRepository _filmeRepository;

        //construtor
        public FilmeController(IFilmeRepository filmeRepository)
        {
            _filmeRepository = filmeRepository;
        }

        //CREATE FILME VIEW MODEL
        private async Task<FilmeViewModel> CriarFilmeViewModel(FilmeViewModel? model = null)
        {
            //var generos = await _generoRepository.GetAllAsync();

            return new FilmeViewModel
            {
                IdFilmeViewModel = model?.IdFilmeViewModel ?? 0,
                TituloFilmeViewModel = model?.TituloFilmeViewModel,
                ProdutoraFilmeViewModel = model?.ProdutoraFilmeViewModel,
                GeneroIdFilmeViewModel = model?.GeneroIdFilmeViewModel ?? 0,
                ClassificacaoIdFilmeViewModel = model?.ClassificacaoIdFilmeViewModel ?? 0,
                UrlImagemFilmeViewModel = model?.UrlImagemFilmeViewModel,
                ImagemUpload = model?.ImagemUpload,
                Generos = model?.Generos
            };
        }

        //refator em seguida
        public IActionResult Index()
        {
            return View();
        }

        //CREATE
        public async Task <IActionResult> Create()
        {
            return View();
        }
    }
}
