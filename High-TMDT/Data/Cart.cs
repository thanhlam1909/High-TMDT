using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class Cart
    {
        public Cart()
        {
            Orders = new HashSet<Order>();
        }

        public int Id { get; set; }
        public string? IdnguoiDung { get; set; }
        public int? IdlistSanPham { get; set; }
        public int? SoLuong { get; set; }
        public int? TongGiaTriDonHang { get; set; }

        public virtual ProductListsCart? IdlistSanPhamNavigation { get; set; }
        public virtual User? IdnguoiDungNavigation { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
    }
}
