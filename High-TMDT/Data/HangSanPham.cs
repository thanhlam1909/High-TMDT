using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class HangSanPham
    {
        public HangSanPham()
        {
            DongSanPhams = new HashSet<DongSanPham>();
            HangSanXuatLoaiSanPhams = new HashSet<HangSanXuatLoaiSanPham>();
        }

        public int IdHangSp { get; set; }
        public string TenHangSp { get; set; } = null!;
        public string? AnhHang { get; set; }

        public virtual ICollection<DongSanPham> DongSanPhams { get; set; }
        public virtual ICollection<HangSanXuatLoaiSanPham> HangSanXuatLoaiSanPhams { get; set; }
    }
}
