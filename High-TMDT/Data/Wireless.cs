using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class Wireless
    {
        public Wireless()
        {
            CauHinhSanPhamLaptops = new HashSet<CauHinhSanPhamLaptop>();
        }

        public string IdWireless { get; set; } = null!;
        public string? TenWireless { get; set; }
        public string? TocDoKetNoi { get; set; }
        public string? BangTanHoTro { get; set; }

        public virtual ICollection<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; }
    }
}
