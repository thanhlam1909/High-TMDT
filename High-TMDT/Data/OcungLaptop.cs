using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class OcungLaptop
    {
        public OcungLaptop()
        {
            CauHinhSanPhamLaptops = new HashSet<CauHinhSanPhamLaptop>();
        }

        public int IdOocung { get; set; }
        public string? TenOocung { get; set; }
        public string? DungLuongOocung { get; set; }
        public string? TocDoDocOocung { get; set; }
        public string? TocDoGhiOocung { get; set; }
        public string? LoaiOocung { get; set; }
        public string? GiaoTiepOocung { get; set; }

        public virtual ICollection<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; }
    }
}
