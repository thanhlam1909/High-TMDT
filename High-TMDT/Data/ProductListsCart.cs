using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class ProductListsCart
    {
        public ProductListsCart()
        {
            Carts = new HashSet<Cart>();
        }

        public int IdlistSanPham { get; set; }
        public string? IdsanPham { get; set; }
        public int? SoLuong { get; set; }
        public int? Gia { get; set; }

        public virtual SanPhamLaptop? IdsanPhamNavigation { get; set; }
        public virtual ICollection<Cart> Carts { get; set; }
    }
}
