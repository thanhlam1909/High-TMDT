using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class ProductListOder
    {
        public int MaDsdh { get; set; }
        public string? MaDonHang { get; set; }
        public string? MaSp { get; set; }
        public int? SoLuong { get; set; }
        public int? Gia { get; set; }

        public virtual Order? MaDonHangNavigation { get; set; }
        public virtual SanPhamLaptop? MaSpNavigation { get; set; }
    }
}
