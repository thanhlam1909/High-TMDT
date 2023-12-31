using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class CardDoHoaTichHop
    {
        public CardDoHoaTichHop()
        {
            CauHinhSanPhamLaptops = new HashSet<CauHinhSanPhamLaptop>();
        }

        public int IdCardTichHop { get; set; }
        public string? TenCard { get; set; }
        public string? NhaSx { get; set; }
        public string? KienTruc { get; set; }
        public int? Vram { get; set; }
        public string? GiaoTiep { get; set; }
        public string? BangThon { get; set; }
        public int? TocDoNhan { get; set; }
        public int? SoLoiCuda { get; set; }
        public string? DirectX { get; set; }
        public string? OpenGl { get; set; }
        public string? Vulkan { get; set; }

        public virtual ICollection<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; }
    }
}
