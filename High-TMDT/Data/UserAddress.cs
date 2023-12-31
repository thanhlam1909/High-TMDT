using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class UserAddress
    {
        public int Id { get; set; }
        public string? IdnguoiDung { get; set; }
        public string? DiaChiNha { get; set; }
        public string? PhuongXa { get; set; }
        public string? QuanHuyen { get; set; }
        public string? ThanhPhoTinh { get; set; }
        public string? QuocGia { get; set; }

        public virtual User? IdnguoiDungNavigation { get; set; }
    }
}
