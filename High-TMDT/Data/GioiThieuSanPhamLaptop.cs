using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class GioiThieuSanPhamLaptop
    {
        public int Id { get; set; }
        public string? IdSp { get; set; }
        public string? TieuDeSp { get; set; }
        public int? ThuTuTieuDe { get; set; }
        public string? LinkAnh { get; set; }
        public int? ThuTuAnh { get; set; }
        public string? LinkVideo { get; set; }
        public int? ThuTuVideo { get; set; }

        public virtual SanPhamLaptop? IdSpNavigation { get; set; }
    }
}
