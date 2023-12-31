using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class DanhSachKhuyenMai
    {
        public int Id { get; set; }
        public int? MaKhuyenMai { get; set; }
        public string? MaDonDat { get; set; }

        public virtual Order? MaDonDatNavigation { get; set; }
        public virtual DiscountCode? MaKhuyenMaiNavigation { get; set; }
    }
}
