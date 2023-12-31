using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class CongKetNoiCuaSanPham
    {
        public int Id { get; set; }
        public string? IdCongKetNoi { get; set; }
        public int? Soluongcong { get; set; }
        public int? Idcauhinhsanpham { get; set; }

        public virtual CongKetNoi? IdCongKetNoiNavigation { get; set; }
        public virtual CauHinhSanPhamLaptop? IdcauhinhsanphamNavigation { get; set; }
    }
}
