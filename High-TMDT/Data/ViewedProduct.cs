using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class ViewedProduct
    {
        public int Id { get; set; }
        public string? UserId { get; set; }
        public string? ProductId { get; set; }
        public DateTime? ViewedDate { get; set; }

        public virtual SanPhamLaptop? Product { get; set; }
        public virtual User? User { get; set; }
    }
}
