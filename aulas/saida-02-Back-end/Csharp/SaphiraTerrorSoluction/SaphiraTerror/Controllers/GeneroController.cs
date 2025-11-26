using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SaphiraTerror.Interfaces;
using SaphiraTerror.Models;

namespace SaphiraTerror.Controllers
{
    [Authorize(Roles = "Administrador,Gerente")]
    public class GeneroController : Controller
    {
        private readonly IGeneroRepository _generoRepository;
        public GeneroController(IGeneroRepository generoRepository)
        {
            _generoRepository = generoRepository;
        }

        //gerando lista de visualização
        public async Task<IActionResult> Index()
        {
            var lista = await _generoRepository.GetAllAsync();
            //organizando em ordem alfabetica
            lista = lista.OrderBy(f => f.DescricaoGenero).ToList();
            return View(lista);
        }

        //CREATE
        public IActionResult Create() => View();
        [HttpPost]
        public async Task<IActionResult> Create(Genero genero)
        {
            if (ModelState.IsValid)
            {
                await _generoRepository.AddAsync(genero);
                return RedirectToAction(nameof(Index));
            }
            return View(genero);
        }

        //UPDATE
        public async Task<IActionResult> Edit(int id)
        {
            var genero = await _generoRepository.GetByIdAsync(id);
            if (genero == null) return NotFound();
            return View(genero);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Genero genero)
        {
            if (ModelState.IsValid)
            {
                await _generoRepository.UpdateAsync(genero);
                return RedirectToAction(nameof(Index));
            }
            return View(genero);
        }

        //DELETE
        public async Task<IActionResult> Delete(int id)
        {
            var genero = await _generoRepository.GetByIdAsync(id);
            if (genero == null) return NotFound();
            return View(genero);
        }
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            await _generoRepository.DeleteAsync(id);
            return RedirectToAction(nameof(Index));
        }
    }
}
