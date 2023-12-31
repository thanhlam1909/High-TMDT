using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class Ram
    {
        public Ram()
        {
            CauHinhSanPhamLaptops = new HashSet<CauHinhSanPhamLaptop>();
        }

        public string IdRam { get; set; } = null!;
        public string? DungLuongRam { get; set; }
        public string? KieuRam { get; set; }
        public string? TocDoHoatDong { get; set; }

        public virtual ICollection<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; }
    }
}
