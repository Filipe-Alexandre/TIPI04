using System.Security.Cryptography.X509Certificates;

namespace ServerMP1.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string Description { get; set; } = null!;
        public string UrlImg { get; set; } = null!;
        public decimal Price { get; set; }
        public int Stock { get; set; }
        public bool IsActive { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; } = null!;
        public virtual Category? Category { get; set; } = null!;
    }
}
