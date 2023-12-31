using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class LoaiSanPham
    {
        public LoaiSanPham()
        {
            DongSanPhams = new HashSet<DongSanPham>();
            HangSanXuatLoaiSanPhams = new HashSet<HangSanXuatLoaiSanPham>();
        }

        public int IdLoaiSp { get; set; }
        public string TenLoaiSp { get; set; } = null!;

        public virtual ICollection<DongSanPham> DongSanPhams { get; set; }
        public virtual ICollection<HangSanXuatLoaiSanPham> HangSanXuatLoaiSanPhams { get; set; }
    }
}
