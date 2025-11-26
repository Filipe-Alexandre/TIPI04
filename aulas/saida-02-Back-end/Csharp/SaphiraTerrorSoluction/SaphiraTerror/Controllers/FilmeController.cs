using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;
using SaphiraTerror.ViewModels;

namespace SaphiraTerror.Controllers;

public class FilmeController : Controller
{
    //campos de apoio para injeção de dependencia
    private readonly IFilmeRepository _filmeRepository;
    private readonly IGeneroRepository _generoRepository;
    private readonly IClassificacaoRepository _classificacaoRepository;

    //construtor
    public FilmeController(IFilmeRepository filmeRepository, IGeneroRepository generoRepository, IClassificacaoRepository classificacaoRepository)
    {
        _filmeRepository = filmeRepository;
        _generoRepository = generoRepository;
        _classificacaoRepository = classificacaoRepository;
    }

    //metodo de apoio criarFilmesVM
    private async Task<FilmeViewModel> CriarFilmeViewModel(FilmeViewModel? model = null)
    {
        var generos = await _generoRepository.GetAllAsync();
        var classificacoes = await _classificacaoRepository.GetAllAsync();
        return new FilmeViewModel
        {
            IdFilmeViewModel = model?.IdFilmeViewModel ?? 0, //se for nulo recebe 0
            TituloFilmeViewModel = model?.TituloFilmeViewModel,
            ProdutoraFilmeViewModel = model?.ProdutoraFilmeViewModel,
            GeneroIdFilmeViewModel = model?.GeneroIdFilmeViewModel ?? 0,
            ClassificacaoIdFilmeViewModel = model?.ClassificacaoIdFilmeViewModel ?? 0,
            UrlImagemFilmeViewModel = model?.UrlImagemFilmeViewModel,
            ImagemUpload = model?.ImagemUpload,
            Generos = generos.Select(g => new SelectListItem
            {
                Value = g.IdGenero.ToString(),
                Text = g.DescricaoGenero
            }),
            Classificacoes = classificacoes.Select(c => new SelectListItem
            {
                Value = c.IdClassificacao.ToString(),
                Text = c.DescricaoClassificacao
            }),
        };
    }

    //index
    [Authorize(Roles = "Administrador,Gerente,Outros")]
    public async Task<IActionResult> Index(int? generoId, string? search)
    {
        var filmes = await _filmeRepository.GetAllAsync();
        //filtro
        if (generoId.HasValue && generoId.Value > 0)
            filmes = filmes.Where(f => f.GeneroId == generoId).ToList();
        //search
        if (!string.IsNullOrEmpty(search))
        {
            filmes = filmes.Where(f => f.Titulo.Contains(search, StringComparison.OrdinalIgnoreCase)).ToList();
        }
        //ordenando em ordem alfabética
        filmes = filmes.OrderBy(f => f.Titulo).ToList();

        //criando componentes
        ViewBag.Generos = new SelectList(await _generoRepository.GetAllAsync(), "IdGenero", "DescricaoGenero");
        ViewBag.FiltroGeneroId = generoId;
        ViewBag.Search = search;

        return View(filmes);

    }

    //create - sempre 2 metodos view ou persistencia(gravar no banco)
    [Authorize(Roles = "Administrador,Gerente")]
    //view
    public async Task<IActionResult> Create()
    {
        var viewModel = await CriarFilmeViewModel();
        return View(viewModel);
    }
    [HttpPost]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Create(FilmeViewModel viewModel)
    {
        if (ModelState.IsValid)
        {
            string caminhoImagem;
            if (viewModel.ImagemUpload != null)
            {
                var nomeArquivo = Guid.NewGuid().ToString() + Path.GetExtension(viewModel.ImagemUpload.FileName);
                var caminho = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img", nomeArquivo);

                //criar a pasta se não existir
                using var stream = new FileStream(caminho, FileMode.Create);
                await viewModel.ImagemUpload.CopyToAsync(stream);
                caminhoImagem = $"/img/{nomeArquivo}"; //caminho relativo para o banco de dados
            }
            else
            {
                caminhoImagem = "/img/default-filme.png"; //imagem padrão
            };
            var filme = new Filme
            {
                Titulo = viewModel.TituloFilmeViewModel,
                Produtora = viewModel.ProdutoraFilmeViewModel,
                GeneroId = viewModel.GeneroIdFilmeViewModel,
                ClassificacaoId = viewModel.ClassificacaoIdFilmeViewModel,
                UrlImagem = caminhoImagem
            };
            await _filmeRepository.AddAsync(filme);
            return RedirectToAction(nameof(Index));
        }
        viewModel = await CriarFilmeViewModel(viewModel);
        return View(viewModel);
    }

    //edit
    [Authorize(Roles = "Administrador,Gerente")]
    public async Task<IActionResult> Edit(int id)
    {
        var filme = await _filmeRepository.GetByIdAsync(id);
        if (filme == null) return NotFound();

        var viewModel = new FilmeViewModel
        {
            IdFilmeViewModel = filme?.IdFilme ?? 0, //se for nulo recebe 0
            TituloFilmeViewModel = filme?.Titulo,
            ProdutoraFilmeViewModel = filme?.Produtora,
            GeneroIdFilmeViewModel = filme?.GeneroId ?? 0,
            ClassificacaoIdFilmeViewModel = filme?.ClassificacaoId ?? 0,
            Generos = (await _generoRepository.GetAllAsync()).Select(g => new SelectListItem
            {
                Value = g.IdGenero.ToString(),
                Text = g.DescricaoGenero
            }),
            Classificacoes = (await _classificacaoRepository.GetAllAsync()).Select(c => new SelectListItem
            {
                Value = c.IdClassificacao.ToString(),
                Text = c.DescricaoClassificacao
            })
        };
        return View(viewModel);
    }
    [HttpPost]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Edit(int id, FilmeViewModel viewModel)
    {
        if (id != viewModel.IdFilmeViewModel) return NotFound();
        if (ModelState.IsValid)
        {
            var filme = await _filmeRepository.GetByIdAsync(id);
            if (filme == null) return NotFound();

            //atualiza os dados do filme
            filme.Titulo = viewModel.TituloFilmeViewModel;
            filme.Produtora = viewModel.ProdutoraFilmeViewModel;
            filme.ClassificacaoId = viewModel.ClassificacaoIdFilmeViewModel;
            filme.GeneroId = viewModel.GeneroIdFilmeViewModel;

            if (viewModel.ImagemUpload != null)
            {
                var nomeArquivo = Guid.NewGuid().ToString() + Path.GetExtension(viewModel.ImagemUpload.FileName);
                var caminho = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img", nomeArquivo);

                //criar a pasta se não existir
                using var stream = new FileStream(caminho, FileMode.Create);
                await viewModel.ImagemUpload.CopyToAsync(stream);
                filme.UrlImagem = $"/img/{nomeArquivo}"; //caminho relativo para o banco de dados
            }
            else
            {
                filme.UrlImagem = "/img/default-filme.png"; //imagem padrão
            }
            await _filmeRepository.UpdateAsync(filme);
            return RedirectToAction(nameof(Index));
        }
        viewModel = await CriarFilmeViewModel(viewModel);
        return View(viewModel);
    }

    //delete 
    [Authorize(Roles = "Administrador")]
    public async Task<IActionResult> Delete(int id)
    {
        var filme = await _filmeRepository.GetByIdAsync(id);
        if (filme == null) return NotFound();
        return View(filme);
    }

    [HttpPost, ActionName("Delete")]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> DeleteConfirmed(int id)
    {
        await _filmeRepository.DeleteAsync(id);
        return RedirectToAction(nameof(Index));
    }
}