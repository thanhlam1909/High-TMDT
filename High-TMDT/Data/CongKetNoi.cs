using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class CongKetNoi
    {
        public CongKetNoi()
        {
            CongKetNoiCuaSanPhams = new HashSet<CongKetNoiCuaSanPham>();
        }

        public string IdCongKetNoi { get; set; } = null!;
        public string? TenCong { get; set; }
        public string? LoaiCong { get; set; }
        public string? TocDoTruyenDuLieu { get; set; }
        public string? ChucNang { get; set; }

        public virtual ICollection<CongKetNoiCuaSanPham> CongKetNoiCuaSanPhams { get; set; }
    }
}
