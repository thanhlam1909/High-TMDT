using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class Mau
    {
        public Mau()
        {
            CauHinhSanPhamLaptops = new HashSet<CauHinhSanPhamLaptop>();
        }

        public int IdMau { get; set; }
        public string? TenMau { get; set; }

        public virtual ICollection<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; }
    }
}
