using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class HangSanXuatLoaiSanPham
    {
        public HangSanXuatLoaiSanPham()
        {
            DongSanPhams = new HashSet<DongSanPham>();
            SanPhamLaptops = new HashSet<SanPhamLaptop>();
        }

        public int IdHangLoaiSp { get; set; }
        public int? IdHangSp { get; set; }
        public int? IdLoaiSp { get; set; }

        public virtual HangSanPham? IdHangSpNavigation { get; set; }
        public virtual LoaiSanPham? IdLoaiSpNavigation { get; set; }
        public virtual ICollection<DongSanPham> DongSanPhams { get; set; }
        public virtual ICollection<SanPhamLaptop> SanPhamLaptops { get; set; }
    }
}
