using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class DanhSachSanPhamKhuyenMai
    {
        public int Id { get; set; }
        public string? MaSp { get; set; }
        public int? MaKm { get; set; }

        public virtual DiscountCode? MaKmNavigation { get; set; }
        public virtual SanPhamLaptop? MaSpNavigation { get; set; }
    }
}
