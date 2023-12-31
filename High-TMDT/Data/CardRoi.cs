using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class CardRoi
    {
        public CardRoi()
        {
            CauHinhSanPhamLaptops = new HashSet<CauHinhSanPhamLaptop>();
        }

        public int IdCardRoi { get; set; }
        public string? TenCard { get; set; }
        public string? NhaSx { get; set; }
        public string? KienTruc { get; set; }
        public int? Vram { get; set; }
        public string? GiaoThuc { get; set; }
        public string? BangThongBoNho { get; set; }
        public int? TocDoNhan { get; set; }
        public int? SoLoi { get; set; }
        public string? DirectX { get; set; }
        public string? OpenGl { get; set; }
        public string? Vulkan { get; set; }

        public virtual ICollection<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; }
    }
}
