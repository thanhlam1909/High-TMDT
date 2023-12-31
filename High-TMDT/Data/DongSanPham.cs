using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class DongSanPham
    {
        public DongSanPham()
        {
            SanPhamLaptops = new HashSet<SanPhamLaptop>();
        }

        public int IdDongSanPham { get; set; }
        public int? IdhangSanPham { get; set; }
        public string? TenDongSanPham { get; set; }
        public int? LoaiSanPham { get; set; }

        public virtual HangSanPham? IdhangSanPhamNavigation { get; set; }
        public virtual LoaiSanPham? LoaiSanPhamNavigation { get; set; }
        public virtual ICollection<SanPhamLaptop> SanPhamLaptops { get; set; }
    }
}
