using System;
using System.Collections.Generic;

namespace High_TMDT.Data
{
    public partial class WirelesSp
    {
        public int MaWirelessSp { get; set; }
        public string? MaWireless { get; set; }
        public int? MaChsp { get; set; }

        public virtual CauHinhSanPhamLaptop? MaChspNavigation { get; set; }
        public virtual Wireless? MaWirelessNavigation { get; set; }
    }
}
