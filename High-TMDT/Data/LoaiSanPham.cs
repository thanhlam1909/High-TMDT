using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class LoaiSanPham
    {
        public LoaiSanPham()
        {
            HangSanXuatLoaiSanPhams = new HashSet<HangSanXuatLoaiSanPham>();
        }

        public int IdLoaiSp { get; set; }
        public string TenLoaiSp { get; set; } = null!;

        public virtual ICollection<HangSanXuatLoaiSanPham> HangSanXuatLoaiSanPhams { get; set; }
    }
}
