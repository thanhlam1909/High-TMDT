using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class HinhAnhPhuSanPhamLaptop
    {
        public int Id { get; set; }
        public string? IdSanPham { get; set; }
        public string? ImageUrlPhu { get; set; }

        public virtual SanPhamLaptop? IdSanPhamNavigation { get; set; }
    }
}
