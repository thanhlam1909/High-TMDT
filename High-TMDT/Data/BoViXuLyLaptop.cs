using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class BoViXuLyLaptop
    {
        public BoViXuLyLaptop()
        {
            CauHinhSanPhamLaptops = new HashSet<CauHinhSanPhamLaptop>();
        }

        public string IdBoViXuLy { get; set; } = null!;
        public string? HangSx { get; set; }
        public string? TenBoViXuLy { get; set; }
        public decimal? TocDo { get; set; }
        public int? SoNhan { get; set; }
        public int? SoLuong { get; set; }

        public virtual ICollection<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; }
    }
}
