using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class Order
    {
        public Order()
        {
            DanhSachKhuyenMais = new HashSet<DanhSachKhuyenMai>();
            DsspDonHangs = new HashSet<DsspDonHang>();
            Payments = new HashSet<Payment>();
            ProductListOders = new HashSet<ProductListOder>();
        }

        public string Id { get; set; } = null!;
        public string? TrangThai { get; set; }
        public DateTime? NgayDatHang { get; set; }
        public int? IdgioHang { get; set; }

        public virtual Cart? IdgioHangNavigation { get; set; }
        public virtual ICollection<DanhSachKhuyenMai> DanhSachKhuyenMais { get; set; }
        public virtual ICollection<DsspDonHang> DsspDonHangs { get; set; }
        public virtual ICollection<Payment> Payments { get; set; }
        public virtual ICollection<ProductListOder> ProductListOders { get; set; }
    }
}
