using ServerMP1.Interfaces;
using ServerMP1.Models;

namespace ServerMP1.Services
{
    public class ProductService : IProductService
    {
        public List<Product> GetProducts() =>
            new()
        {
            new Product() { Id = 1, Name = "X-Burger", Description = "Delicious beef burger with cheese, lettuce, tomato, and our special sauce.", UrlImg = "https://as2.ftcdn.net/v2/jpg/02/20/76/09/1000_F_220760999_VTzFOkI2La8bUWgjWx0htArsJd38DNDY.jpg", Price = 15.99m, Stock = 50, IsActive = true, CategoryId = 1, CategoryName = "Lanche" },
            new Product() { Id = 2, Name = "Coca-Cola", Description = "Refreshing 350ml can of Coca-Cola.", UrlImg = "https://as2.ftcdn.net/v2/jpg/02/31/29/75/1000_F_231297579_pG8PGsUVEBh0vCcMrOiLLpdGipDbUxsA.jpg", Price = 4.99m, Stock = 100, IsActive = true, CategoryId = 2, CategoryName = "Bebida" },
            new Product() { Id = 3, Name = "Chocolate Cake", Description = "Decadent slice of chocolate cake topped with rich chocolate ganache.", UrlImg = "https://as2.ftcdn.net/v2/jpg/02/52/80/65/1000_F_252806539_NY00M2qfoaXGQQDIsV0d4uGeHWuJYLVl.jpg", Price = 7.99m, Stock = 30, IsActive = true, CategoryId = 3, CategoryName = "Sobremesa" }
        };
    }
}
