using ServerMP1.Interfaces;
using ServerMP1.Models;

namespace ServerMP1.Services
{
    public class CategoryService : ICategoryService
    {
        public List<Category> GetCategories() =>
            new()
            {
                new Category { Id = 1, Name = "Lanche" },
                new Category { Id = 2, Name = "Bebida" },
                new Category { Id = 3, Name = "Sobremesa" }
            };
}
}
