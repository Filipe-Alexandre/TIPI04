using ServerMP1.Models;

namespace ServerMP1.DTOs
{
    public class ProductDTO
    {
        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string Description { get; set; } = null!;
        public string UrlImg { get; set; } = null!;
        public decimal Price { get; set; }
        public int Stock { get; set; }
        public bool IsActive { get; set; }

        //categoria escolhida no select
        public string CategoryName { get; set; } = string.Empty;
        public List<CategoryDTO> Categories { get; set; } = new();
    }
}
