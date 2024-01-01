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
        public int? IdhangLoaiSanPham { get; set; }
        public string? TenDongSanPham { get; set; }

        public virtual HangSanXuatLoaiSanPham? IdhangLoaiSanPhamNavigation { get; set; }
        public virtual ICollection<SanPhamLaptop> SanPhamLaptops { get; set; }
    }
}
