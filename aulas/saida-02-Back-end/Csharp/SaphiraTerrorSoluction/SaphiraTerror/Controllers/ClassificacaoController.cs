using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;

namespace SaphiraTerror.Controllers
{
    [Authorize(Roles = "Administrador,Gerente")]
    public class ClassificacaoController : Controller
    {
        private readonly IClassificacaoRepository _classificacaoRepository;
        public ClassificacaoController(IClassificacaoRepository classificacaoRepository)
        {
            _classificacaoRepository = classificacaoRepository;
        }

        public async Task<IActionResult> Index()
        {
            var lista = await _classificacaoRepository.GetAllAsync();
            //organizando em ordem alfabetica
            lista = lista.OrderBy(f => f.DescricaoClassificacao).ToList();
            return View(lista);
        }

        public IActionResult Create() => View();
        [HttpPost]
        public async Task<IActionResult> Create(Classificacao classificacao)
        {
            if (ModelState.IsValid)
            {
                await _classificacaoRepository.AddAsync(classificacao);
                return RedirectToAction(nameof(Index));
            }
            return View(classificacao);
        }

        public async Task<IActionResult> Edit(int id)
        {
            var classificacao = await _classificacaoRepository.GetByIdAsync(id);
            if (classificacao == null) return NotFound();
            return View(classificacao);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Classificacao classificacao)
        {
            if (ModelState.IsValid)
            {
                await _classificacaoRepository.UpdateAsync(classificacao);
                return RedirectToAction(nameof(Index));
            }
            return View(classificacao);
        }


        [Authorize(Roles = "Administrador")]
        public async Task<IActionResult> Delete(int id)
        {
            var classificacao = await _classificacaoRepository.GetByIdAsync(id);
            if (classificacao == null) return NotFound();
            return View(classificacao);
        }
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            await _classificacaoRepository.DeleteAsync(id);
            return RedirectToAction(nameof(Index));
        }
    }
}
