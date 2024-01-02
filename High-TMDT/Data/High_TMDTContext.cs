using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace High_TMDT.Data
{
    public partial class High_TMDTContext : DbContext
    {
        public High_TMDTContext()
        {
        }

        public High_TMDTContext(DbContextOptions<High_TMDTContext> options)
            : base(options)
        {
        }

        public virtual DbSet<BoViXuLyLaptop> BoViXuLyLaptops { get; set; } = null!;
        public virtual DbSet<CardDoHoaTichHop> CardDoHoaTichHops { get; set; } = null!;
        public virtual DbSet<CardRoi> CardRois { get; set; } = null!;
        public virtual DbSet<Cart> Carts { get; set; } = null!;
        public virtual DbSet<CauHinhSanPhamLaptop> CauHinhSanPhamLaptops { get; set; } = null!;
        public virtual DbSet<CongKetNoi> CongKetNois { get; set; } = null!;
        public virtual DbSet<CongKetNoiCuaSanPham> CongKetNoiCuaSanPhams { get; set; } = null!;
        public virtual DbSet<DanhSachKhuyenMai> DanhSachKhuyenMais { get; set; } = null!;
        public virtual DbSet<DanhSachSanPhamKhuyenMai> DanhSachSanPhamKhuyenMais { get; set; } = null!;
        public virtual DbSet<DiscountCode> DiscountCodes { get; set; } = null!;
        public virtual DbSet<DongSanPham> DongSanPhams { get; set; } = null!;
        public virtual DbSet<DsspDonHang> DsspDonHangs { get; set; } = null!;
        public virtual DbSet<FavoriteProduct> FavoriteProducts { get; set; } = null!;
        public virtual DbSet<GioiThieuSanPhamLaptop> GioiThieuSanPhamLaptops { get; set; } = null!;
        public virtual DbSet<HangSanPham> HangSanPhams { get; set; } = null!;
        public virtual DbSet<HangSanXuatLoaiSanPham> HangSanXuatLoaiSanPhams { get; set; } = null!;
        public virtual DbSet<HinhAnhPhuSanPhamLaptop> HinhAnhPhuSanPhamLaptops { get; set; } = null!;
        public virtual DbSet<LoaiSanPham> LoaiSanPhams { get; set; } = null!;
        public virtual DbSet<ManHinhLaptop> ManHinhLaptops { get; set; } = null!;
        public virtual DbSet<Mau> Maus { get; set; } = null!;
        public virtual DbSet<OcungLaptop> OcungLaptops { get; set; } = null!;
        public virtual DbSet<Order> Orders { get; set; } = null!;
        public virtual DbSet<Payment> Payments { get; set; } = null!;
        public virtual DbSet<ProductListOder> ProductListOders { get; set; } = null!;
        public virtual DbSet<ProductListsCart> ProductListsCarts { get; set; } = null!;
        public virtual DbSet<PromotionProgram> PromotionPrograms { get; set; } = null!;
        public virtual DbSet<PromotionProgramContent> PromotionProgramContents { get; set; } = null!;
        public virtual DbSet<Ram> Rams { get; set; } = null!;
        public virtual DbSet<Review> Reviews { get; set; } = null!;
        public virtual DbSet<SanPhamLaptop> SanPhamLaptops { get; set; } = null!;
        public virtual DbSet<User> Users { get; set; } = null!;
        public virtual DbSet<UserAddress> UserAddresses { get; set; } = null!;
        public virtual DbSet<ViewedProduct> ViewedProducts { get; set; } = null!;
        public virtual DbSet<WirelesSp> WirelesSps { get; set; } = null!;
        public virtual DbSet<Wireless> Wirelesses { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=.;Initial Catalog=High_TMDT;Integrated Security=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BoViXuLyLaptop>(entity =>
            {
                entity.HasKey(e => e.IdBoViXuLy)
                    .HasName("PK__BoViXuLy__B80E4F71B27E4125");

                entity.ToTable("BoViXuLyLaptop");

                entity.Property(e => e.IdBoViXuLy)
                    .HasMaxLength(255)
                    .HasColumnName("ID_Bo_Vi_Xu_Ly");

                entity.Property(e => e.HangSx)
                    .HasMaxLength(255)
                    .HasColumnName("Hang_SX");

                entity.Property(e => e.SoLuong).HasColumnName("So_Luong");

                entity.Property(e => e.SoNhan).HasColumnName("So_Nhan");

                entity.Property(e => e.TenBoViXuLy)
                    .HasMaxLength(255)
                    .HasColumnName("Ten_Bo_Vi_Xu_Ly");

                entity.Property(e => e.TocDo)
                    .HasColumnType("decimal(18, 0)")
                    .HasColumnName("Toc_Do");
            });

            modelBuilder.Entity<CardDoHoaTichHop>(entity =>
            {
                entity.HasKey(e => e.IdCardTichHop)
                    .HasName("PK__CardDoHo__1B215EA7014CB92E");

                entity.ToTable("CardDoHoaTichHop");

                entity.Property(e => e.IdCardTichHop).HasColumnName("idCardTichHop");

                entity.Property(e => e.BangThon)
                    .HasMaxLength(255)
                    .HasColumnName("Bang_Thon");

                entity.Property(e => e.DirectX).HasMaxLength(255);

                entity.Property(e => e.GiaoTiep)
                    .HasMaxLength(255)
                    .HasColumnName("Giao_Tiep");

                entity.Property(e => e.KienTruc)
                    .HasMaxLength(255)
                    .HasColumnName("Kien_Truc");

                entity.Property(e => e.NhaSx)
                    .HasMaxLength(255)
                    .HasColumnName("Nha_SX");

                entity.Property(e => e.OpenGl)
                    .HasMaxLength(255)
                    .HasColumnName("OpenGL");

                entity.Property(e => e.SoLoiCuda).HasColumnName("So_Loi_Cuda");

                entity.Property(e => e.TenCard)
                    .HasMaxLength(255)
                    .HasColumnName("Ten_Card");

                entity.Property(e => e.TocDoNhan).HasColumnName("Toc_Do_Nhan");

                entity.Property(e => e.Vram).HasColumnName("VRAM");

                entity.Property(e => e.Vulkan).HasMaxLength(255);
            });

            modelBuilder.Entity<CardRoi>(entity =>
            {
                entity.HasKey(e => e.IdCardRoi)
                    .HasName("PK__CardRoi__D776743FB1B444BB");

                entity.ToTable("CardRoi");

                entity.Property(e => e.IdCardRoi).HasColumnName("idCardRoi");

                entity.Property(e => e.BangThongBoNho)
                    .HasMaxLength(255)
                    .HasColumnName("Bang_Thong_Bo_Nho");

                entity.Property(e => e.DirectX).HasMaxLength(255);

                entity.Property(e => e.GiaoThuc)
                    .HasMaxLength(255)
                    .HasColumnName("Giao_thuc");

                entity.Property(e => e.KienTruc)
                    .HasMaxLength(255)
                    .HasColumnName("Kien_Truc");

                entity.Property(e => e.NhaSx)
                    .HasMaxLength(255)
                    .HasColumnName("Nha_SX");

                entity.Property(e => e.OpenGl)
                    .HasMaxLength(255)
                    .HasColumnName("OpenGL");

                entity.Property(e => e.SoLoi).HasColumnName("So_Loi");

                entity.Property(e => e.TenCard)
                    .HasMaxLength(255)
                    .HasColumnName("Ten_Card");

                entity.Property(e => e.TocDoNhan).HasColumnName("Toc_Do_Nhan");

                entity.Property(e => e.Vram).HasColumnName("VRAM");

                entity.Property(e => e.Vulkan).HasMaxLength(255);
            });

            modelBuilder.Entity<Cart>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.IdlistSanPham).HasColumnName("IDListSanPham");

                entity.Property(e => e.IdnguoiDung)
                    .HasMaxLength(255)
                    .HasColumnName("IDNguoiDung");

                entity.HasOne(d => d.IdlistSanPhamNavigation)
                    .WithMany(p => p.Carts)
                    .HasForeignKey(d => d.IdlistSanPham)
                    .HasConstraintName("FK__Carts__IDListSan__6D0D32F4");

                entity.HasOne(d => d.IdnguoiDungNavigation)
                    .WithMany(p => p.Carts)
                    .HasForeignKey(d => d.IdnguoiDung)
                    .HasConstraintName("FK__Carts__IDNguoiDu__6E01572D");
            });

            modelBuilder.Entity<CauHinhSanPhamLaptop>(entity =>
            {
                entity.ToTable("CauHinhSanPhamLaptop");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Camera)
                    .HasMaxLength(255)
                    .HasColumnName("camera");

                entity.Property(e => e.Chuot)
                    .HasMaxLength(255)
                    .HasColumnName("chuot");

                entity.Property(e => e.DungLuongRam).HasColumnName("dungLuongRAM");

                entity.Property(e => e.IdBoViXuLy)
                    .HasMaxLength(255)
                    .HasColumnName("idBoViXuLy");

                entity.Property(e => e.IdKichThuocManHinh).HasColumnName("idKichThuocManHinh");

                entity.Property(e => e.IdRam)
                    .HasMaxLength(255)
                    .HasColumnName("idRAM");

                entity.Property(e => e.IdSanPham)
                    .HasMaxLength(255)
                    .HasColumnName("idSanPham");

                entity.Property(e => e.Idocung).HasColumnName("idocung");

                entity.Property(e => e.KieuBanPhim)
                    .HasMaxLength(255)
                    .HasColumnName("kieuBanPhim");

                entity.Property(e => e.KieuPin)
                    .HasMaxLength(255)
                    .HasColumnName("kieuPin");

                entity.Property(e => e.Loa)
                    .HasMaxLength(255)
                    .HasColumnName("loa");

                entity.Property(e => e.Mau).HasColumnName("mau");

                entity.Property(e => e.SacPin)
                    .HasMaxLength(255)
                    .HasColumnName("sacPin");

                entity.Property(e => e.SoLuongOcung).HasColumnName("soLuongOCung");

                entity.Property(e => e.SoLuongRam).HasColumnName("soLuongRAM");

                entity.Property(e => e.Tencardroi).HasColumnName("tencardroi");

                entity.Property(e => e.Tencardtichhop).HasColumnName("tencardtichhop");

                entity.Property(e => e.TrongLuong)
                    .HasMaxLength(255)
                    .HasColumnName("trongLuong");

                entity.HasOne(d => d.IdBoViXuLyNavigation)
                    .WithMany(p => p.CauHinhSanPhamLaptops)
                    .HasForeignKey(d => d.IdBoViXuLy)
                    .HasConstraintName("FK__CauHinhSa__idBoV__6EF57B66");

                entity.HasOne(d => d.IdKichThuocManHinhNavigation)
                    .WithMany(p => p.CauHinhSanPhamLaptops)
                    .HasForeignKey(d => d.IdKichThuocManHinh)
                    .HasConstraintName("FK__CauHinhSa__idKic__70DDC3D8");

                entity.HasOne(d => d.IdRamNavigation)
                    .WithMany(p => p.CauHinhSanPhamLaptops)
                    .HasForeignKey(d => d.IdRam)
                    .HasConstraintName("FK__CauHinhSa__idRAM__71D1E811");

                entity.HasOne(d => d.IdSanPhamNavigation)
                    .WithMany(p => p.CauHinhSanPhamLaptops)
                    .HasForeignKey(d => d.IdSanPham)
                    .HasConstraintName("FK__CauHinhSa__idSan__72C60C4A");

                entity.HasOne(d => d.IdocungNavigation)
                    .WithMany(p => p.CauHinhSanPhamLaptops)
                    .HasForeignKey(d => d.Idocung)
                    .HasConstraintName("FK_OOCungLaptop_CauHinhSanPhamLaptop");

                entity.HasOne(d => d.MauNavigation)
                    .WithMany(p => p.CauHinhSanPhamLaptops)
                    .HasForeignKey(d => d.Mau)
                    .HasConstraintName("FK__CauHinhSanP__mau__74AE54BC");

                entity.HasOne(d => d.TencardroiNavigation)
                    .WithMany(p => p.CauHinhSanPhamLaptops)
                    .HasForeignKey(d => d.Tencardroi)
                    .HasConstraintName("FK_CauHinhSanPhamLaptop_CardRoi");

                entity.HasOne(d => d.TencardtichhopNavigation)
                    .WithMany(p => p.CauHinhSanPhamLaptops)
                    .HasForeignKey(d => d.Tencardtichhop)
                    .HasConstraintName("FK_CardDoHoaTichHop_SanPhamLaptop");
            });

            modelBuilder.Entity<CongKetNoi>(entity =>
            {
                entity.HasKey(e => e.IdCongKetNoi)
                    .HasName("PK__CongKetN__9BA5394D46697B50");

                entity.ToTable("CongKetNoi");

                entity.Property(e => e.IdCongKetNoi)
                    .HasMaxLength(255)
                    .HasColumnName("idCongKetNoi");

                entity.Property(e => e.ChucNang)
                    .HasMaxLength(255)
                    .HasColumnName("chucNang");

                entity.Property(e => e.LoaiCong)
                    .HasMaxLength(255)
                    .HasColumnName("loaiCong");

                entity.Property(e => e.TenCong)
                    .HasMaxLength(255)
                    .HasColumnName("tenCong");

                entity.Property(e => e.TocDoTruyenDuLieu)
                    .HasMaxLength(255)
                    .HasColumnName("tocDoTruyenDuLieu");
            });

            modelBuilder.Entity<CongKetNoiCuaSanPham>(entity =>
            {
                entity.ToTable("CongKetNoiCuaSanPham");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.IdCongKetNoi)
                    .HasMaxLength(255)
                    .HasColumnName("idCongKetNoi");

                entity.Property(e => e.Soluongcong).HasColumnName("soluongcong");

                entity.HasOne(d => d.IdCongKetNoiNavigation)
                    .WithMany(p => p.CongKetNoiCuaSanPhams)
                    .HasForeignKey(d => d.IdCongKetNoi)
                    .HasConstraintName("FK__CongKetNo__idCon__76969D2E");

                entity.HasOne(d => d.IdcauhinhsanphamNavigation)
                    .WithMany(p => p.CongKetNoiCuaSanPhams)
                    .HasForeignKey(d => d.Idcauhinhsanpham)
                    .HasConstraintName("FK_CongKetNoiCuaSanPham_CauHinhSanPhamLaptop");
            });

            modelBuilder.Entity<DanhSachKhuyenMai>(entity =>
            {
                entity.ToTable("DanhSachKhuyenMai");

                entity.Property(e => e.MaDonDat).HasMaxLength(255);

                entity.HasOne(d => d.MaDonDatNavigation)
                    .WithMany(p => p.DanhSachKhuyenMais)
                    .HasForeignKey(d => d.MaDonDat)
                    .HasConstraintName("FK_DanhSachKhuyenMai_Orders");

                entity.HasOne(d => d.MaKhuyenMaiNavigation)
                    .WithMany(p => p.DanhSachKhuyenMais)
                    .HasForeignKey(d => d.MaKhuyenMai)
                    .HasConstraintName("FK_DanhSachKhuyenMai_DiscountCodes");
            });

            modelBuilder.Entity<DanhSachSanPhamKhuyenMai>(entity =>
            {
                entity.ToTable("DanhSachSanPhamKhuyenMai");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("ID");

                entity.Property(e => e.MaKm).HasColumnName("MaKM");

                entity.Property(e => e.MaSp)
                    .HasMaxLength(255)
                    .HasColumnName("MaSP");

                entity.HasOne(d => d.MaKmNavigation)
                    .WithMany(p => p.DanhSachSanPhamKhuyenMais)
                    .HasForeignKey(d => d.MaKm)
                    .HasConstraintName("FK_DanhSachSanPhamKhuyenMai_DiscountCodes");

                entity.HasOne(d => d.MaSpNavigation)
                    .WithMany(p => p.DanhSachSanPhamKhuyenMais)
                    .HasForeignKey(d => d.MaSp)
                    .HasConstraintName("fk_DanhSachSanPhamKhuyenMai_SanPham");
            });

            modelBuilder.Entity<DiscountCode>(entity =>
            {
                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("ID");

                entity.Property(e => e.MaGiamGia).HasMaxLength(255);

                entity.Property(e => e.NgayBatDau).HasColumnType("date");

                entity.Property(e => e.NgayHetHan).HasColumnType("date");
            });

            modelBuilder.Entity<DongSanPham>(entity =>
            {
                entity.HasKey(e => e.IdDongSanPham)
                    .HasName("PK__DongSanP__F71BA055439F6E49");

                entity.ToTable("DongSanPham");

                entity.Property(e => e.IdDongSanPham).HasColumnName("idDongSanPham");

                entity.Property(e => e.IdhangLoaiSanPham).HasColumnName("idhang_loaiSanPham");

                entity.Property(e => e.TenDongSanPham)
                    .HasMaxLength(255)
                    .HasColumnName("tenDongSanPham");

                entity.HasOne(d => d.IdhangLoaiSanPhamNavigation)
                    .WithMany(p => p.DongSanPhams)
                    .HasForeignKey(d => d.IdhangLoaiSanPham)
                    .HasConstraintName("FK_DongSanPham_HangSanXuatLoaiSanPham");
            });

            modelBuilder.Entity<DsspDonHang>(entity =>
            {
                entity.HasKey(e => e.MaDsspDh);

                entity.ToTable("DSSP_DonHang");

                entity.Property(e => e.MaDsspDh)
                    .HasMaxLength(255)
                    .HasColumnName("Ma_DSSP_DH");

                entity.Property(e => e.MaDh)
                    .HasMaxLength(255)
                    .HasColumnName("Ma_DH");

                entity.Property(e => e.MaSp)
                    .HasMaxLength(255)
                    .HasColumnName("Ma_SP");

                entity.HasOne(d => d.MaDhNavigation)
                    .WithMany(p => p.DsspDonHangs)
                    .HasForeignKey(d => d.MaDh)
                    .HasConstraintName("FK_DSSP_DonHang_Orders");

                entity.HasOne(d => d.MaSpNavigation)
                    .WithMany(p => p.DsspDonHangs)
                    .HasForeignKey(d => d.MaSp)
                    .HasConstraintName("FK_DSSP_DonHang_SanPhamLaptop");
            });

            modelBuilder.Entity<FavoriteProduct>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(255)
                    .HasColumnName("ID");

                entity.Property(e => e.IdnguoiDung)
                    .HasMaxLength(255)
                    .HasColumnName("IDNguoiDung");

                entity.Property(e => e.IdsanPham)
                    .HasMaxLength(255)
                    .HasColumnName("IDSanPham");

                entity.HasOne(d => d.IdnguoiDungNavigation)
                    .WithMany(p => p.FavoriteProducts)
                    .HasForeignKey(d => d.IdnguoiDung)
                    .HasConstraintName("FK__FavoriteP__IDNgu__787EE5A0");

                entity.HasOne(d => d.IdsanPhamNavigation)
                    .WithMany(p => p.FavoriteProducts)
                    .HasForeignKey(d => d.IdsanPham)
                    .HasConstraintName("FK__FavoriteP__IDSan__797309D9");
            });

            modelBuilder.Entity<GioiThieuSanPhamLaptop>(entity =>
            {
                entity.ToTable("GioiThieuSanPhamLaptop");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.IdSp)
                    .HasMaxLength(255)
                    .HasColumnName("ID_SP");

                entity.Property(e => e.LinkAnh)
                    .HasMaxLength(255)
                    .HasColumnName("Link_Anh");

                entity.Property(e => e.LinkVideo)
                    .HasMaxLength(255)
                    .HasColumnName("Link_Video");

                entity.Property(e => e.Noidung).HasMaxLength(255);

                entity.Property(e => e.ThuTuAnh).HasColumnName("Thu_Tu_Anh");

                entity.Property(e => e.ThuTuTieuDe).HasColumnName("Thu_Tu_Tieu_De");

                entity.Property(e => e.ThuTuVideo).HasColumnName("Thu_Tu_Video");

                entity.Property(e => e.TieuDeSp)
                    .HasMaxLength(255)
                    .HasColumnName("Tieu_De_SP");

                entity.HasOne(d => d.IdSpNavigation)
                    .WithMany(p => p.GioiThieuSanPhamLaptops)
                    .HasForeignKey(d => d.IdSp)
                    .HasConstraintName("FK__GioiThieu__idSan__7A672E12");
            });

            modelBuilder.Entity<HangSanPham>(entity =>
            {
                entity.HasKey(e => e.IdHangSp)
                    .HasName("PK__HangSanP__4DE0E358983EBE4B");

                entity.ToTable("HangSanPham");

                entity.Property(e => e.IdHangSp).HasColumnName("Id_Hang_SP");

                entity.Property(e => e.AnhHang).HasMaxLength(255);

                entity.Property(e => e.TenHangSp)
                    .HasMaxLength(255)
                    .HasColumnName("Ten_Hang_SP");
            });

            modelBuilder.Entity<HangSanXuatLoaiSanPham>(entity =>
            {
                entity.HasKey(e => e.IdHangLoaiSp)
                    .HasName("PK__HangSanX__3213E83F7153D86B");

                entity.ToTable("HangSanXuatLoaiSanPham");

                entity.Property(e => e.IdHangLoaiSp).HasColumnName("Id_Hang_Loai_SP");

                entity.Property(e => e.IdHangSp).HasColumnName("Id_Hang_SP");

                entity.Property(e => e.IdLoaiSp).HasColumnName("Id_Loai_SP");

                entity.HasOne(d => d.IdHangSpNavigation)
                    .WithMany(p => p.HangSanXuatLoaiSanPhams)
                    .HasForeignKey(d => d.IdHangSp)
                    .HasConstraintName("FK_HangSanXuatLoaiSanPham_HangSanPham");

                entity.HasOne(d => d.IdLoaiSpNavigation)
                    .WithMany(p => p.HangSanXuatLoaiSanPhams)
                    .HasForeignKey(d => d.IdLoaiSp)
                    .HasConstraintName("FK__HangSanXu__idLoa__7C4F7684");
            });

            modelBuilder.Entity<HinhAnhPhuSanPhamLaptop>(entity =>
            {
                entity.ToTable("HinhAnhPhuSanPhamLaptop");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.IdSanPham)
                    .HasMaxLength(255)
                    .HasColumnName("idSanPham");

                entity.Property(e => e.ImageUrlPhu)
                    .HasMaxLength(255)
                    .HasColumnName("imageUrlPhu");

                entity.HasOne(d => d.IdSanPhamNavigation)
                    .WithMany(p => p.HinhAnhPhuSanPhamLaptops)
                    .HasForeignKey(d => d.IdSanPham)
                    .HasConstraintName("FK__HinhAnhPh__idSan__7D439ABD");
            });

            modelBuilder.Entity<LoaiSanPham>(entity =>
            {
                entity.HasKey(e => e.IdLoaiSp)
                    .HasName("PK__LoaiSanP__CCB8D2950C059CD5");

                entity.ToTable("LoaiSanPham");

                entity.Property(e => e.IdLoaiSp).HasColumnName("Id_Loai_SP");

                entity.Property(e => e.TenLoaiSp)
                    .HasMaxLength(255)
                    .HasColumnName("Ten_Loai_SP");
            });

            modelBuilder.Entity<ManHinhLaptop>(entity =>
            {
                entity.ToTable("ManHinhLaptop");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.CongNgheManHinh)
                    .HasMaxLength(255)
                    .HasColumnName("congNgheManHinh");

                entity.Property(e => e.DoPhanGiai)
                    .HasMaxLength(255)
                    .HasColumnName("doPhanGiai");

                entity.Property(e => e.DoSang).HasColumnName("doSang");

                entity.Property(e => e.KichThuoc).HasColumnName("kichThuoc");

                entity.Property(e => e.LoaiManHinh)
                    .HasMaxLength(255)
                    .HasColumnName("loaiManHinh");

                entity.Property(e => e.TanSo).HasColumnName("tanSo");

                entity.Property(e => e.TyLeKhungHinh)
                    .HasMaxLength(255)
                    .HasColumnName("tyLeKhungHinh");
            });

            modelBuilder.Entity<Mau>(entity =>
            {
                entity.HasKey(e => e.IdMau)
                    .HasName("PK__Mau__3DC6CB1D40899FBC");

                entity.ToTable("Mau");

                entity.Property(e => e.IdMau).HasColumnName("idMau");

                entity.Property(e => e.TenMau)
                    .HasMaxLength(255)
                    .HasColumnName("tenMau");
            });

            modelBuilder.Entity<OcungLaptop>(entity =>
            {
                entity.HasKey(e => e.IdOocung)
                    .HasName("PK__OOCungLa__81E9230945C419A8");

                entity.ToTable("OCungLaptop");

                entity.Property(e => e.IdOocung).HasColumnName("idOOCung");

                entity.Property(e => e.DungLuongOocung)
                    .HasMaxLength(255)
                    .HasColumnName("dungLuongOOCung");

                entity.Property(e => e.GiaoTiepOocung)
                    .HasMaxLength(255)
                    .HasColumnName("giaoTiepOOCung");

                entity.Property(e => e.LoaiOocung)
                    .HasMaxLength(255)
                    .HasColumnName("loaiOOCung");

                entity.Property(e => e.TenOocung)
                    .HasMaxLength(255)
                    .HasColumnName("tenOOCung");

                entity.Property(e => e.TocDoDocOocung)
                    .HasMaxLength(255)
                    .HasColumnName("tocDoDocOOCung");

                entity.Property(e => e.TocDoGhiOocung)
                    .HasMaxLength(255)
                    .HasColumnName("tocDoGhiOOCung");
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(255)
                    .HasColumnName("ID");

                entity.Property(e => e.IdgioHang).HasColumnName("IDGioHang");

                entity.Property(e => e.NgayDatHang).HasColumnType("date");

                entity.Property(e => e.TrangThai).HasMaxLength(255);

                entity.HasOne(d => d.IdgioHangNavigation)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.IdgioHang)
                    .HasConstraintName("FK__Orders__IDGioHan__7E37BEF6");
            });

            modelBuilder.Entity<Payment>(entity =>
            {
                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("ID");

                entity.Property(e => e.IddonHang)
                    .HasMaxLength(255)
                    .HasColumnName("IDDonHang");

                entity.Property(e => e.PhuongThucThanhToan).HasMaxLength(255);

                entity.HasOne(d => d.IddonHangNavigation)
                    .WithMany(p => p.Payments)
                    .HasForeignKey(d => d.IddonHang)
                    .HasConstraintName("FK__Payments__IDDonH__7F2BE32F");
            });

            modelBuilder.Entity<ProductListOder>(entity =>
            {
                entity.HasKey(e => e.MaDsdh);

                entity.ToTable("ProductListOder");

                entity.Property(e => e.MaDsdh)
                    .ValueGeneratedNever()
                    .HasColumnName("Ma_DSDH");

                entity.Property(e => e.MaDonHang)
                    .HasMaxLength(255)
                    .HasColumnName("Ma_DonHang");

                entity.Property(e => e.MaSp)
                    .HasMaxLength(255)
                    .HasColumnName("Ma_SP");

                entity.HasOne(d => d.MaDonHangNavigation)
                    .WithMany(p => p.ProductListOders)
                    .HasForeignKey(d => d.MaDonHang)
                    .HasConstraintName("FK_ProductListOder_Orders");

                entity.HasOne(d => d.MaSpNavigation)
                    .WithMany(p => p.ProductListOders)
                    .HasForeignKey(d => d.MaSp)
                    .HasConstraintName("FK_ProductListOder_SanPhamLaptop");
            });

            modelBuilder.Entity<ProductListsCart>(entity =>
            {
                entity.HasKey(e => e.IdlistSanPham)
                    .HasName("PK__ProductL__ABD53625A674A36D");

                entity.ToTable("ProductListsCart");

                entity.Property(e => e.IdlistSanPham).HasColumnName("IDListSanPham");

                entity.Property(e => e.IdsanPham)
                    .HasMaxLength(255)
                    .HasColumnName("IDSanPham");

                entity.HasOne(d => d.IdsanPhamNavigation)
                    .WithMany(p => p.ProductListsCarts)
                    .HasForeignKey(d => d.IdsanPham)
                    .HasConstraintName("FK_ProductListsCart_SanPhamLaptop");
            });

            modelBuilder.Entity<PromotionProgram>(entity =>
            {
                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("ID");

                entity.Property(e => e.NgayBatDau).HasColumnType("date");

                entity.Property(e => e.NgayKetThuc).HasColumnType("date");

                entity.Property(e => e.TenChuongTrinh).HasMaxLength(255);
            });

            modelBuilder.Entity<PromotionProgramContent>(entity =>
            {
                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("ID");

                entity.Property(e => e.IdchuongTrinhKhuyenMai).HasColumnName("IDChuongTrinhKhuyenMai");

                entity.Property(e => e.ImageUrl).HasMaxLength(255);

                entity.Property(e => e.ThuTuNoiDung).HasMaxLength(255);

                entity.Property(e => e.Video).IsUnicode(false);

                entity.HasOne(d => d.IdchuongTrinhKhuyenMaiNavigation)
                    .WithMany(p => p.PromotionProgramContents)
                    .HasForeignKey(d => d.IdchuongTrinhKhuyenMai)
                    .HasConstraintName("FK__Promotion__IDChu__00200768");
            });

            modelBuilder.Entity<Ram>(entity =>
            {
                entity.HasKey(e => e.IdRam)
                    .HasName("PK__RAM__3C86BDEC44B72791");

                entity.ToTable("RAM");

                entity.Property(e => e.IdRam)
                    .HasMaxLength(255)
                    .HasColumnName("idRAM");

                entity.Property(e => e.DungLuongRam)
                    .HasMaxLength(255)
                    .HasColumnName("dungLuongRAM");

                entity.Property(e => e.KieuRam)
                    .HasMaxLength(255)
                    .HasColumnName("kieuRAM");

                entity.Property(e => e.TocDoHoatDong)
                    .HasMaxLength(255)
                    .HasColumnName("tocDoHoatDong");
            });

            modelBuilder.Entity<Review>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(255)
                    .HasColumnName("ID");

                entity.Property(e => e.IdnguoiDung)
                    .HasMaxLength(255)
                    .HasColumnName("IDNguoiDung");

                entity.Property(e => e.IdsanPham)
                    .HasMaxLength(255)
                    .HasColumnName("IDSanPham");

                entity.HasOne(d => d.IdnguoiDungNavigation)
                    .WithMany(p => p.Reviews)
                    .HasForeignKey(d => d.IdnguoiDung)
                    .HasConstraintName("FK__Reviews__IDNguoi__01142BA1");

                entity.HasOne(d => d.IdsanPhamNavigation)
                    .WithMany(p => p.Reviews)
                    .HasForeignKey(d => d.IdsanPham)
                    .HasConstraintName("FK__Reviews__IDSanPh__02084FDA");
            });

            modelBuilder.Entity<SanPhamLaptop>(entity =>
            {
                entity.ToTable("SanPhamLaptop");

                entity.Property(e => e.Id)
                    .HasMaxLength(255)
                    .HasColumnName("id");

                entity.Property(e => e.AnhChinh)
                    .HasMaxLength(255)
                    .HasColumnName("anhChinh");

                entity.Property(e => e.Gia).HasColumnName("gia");

                entity.Property(e => e.GiaGiam).HasColumnName("giaGiam");

                entity.Property(e => e.IdHangLoaiSanPham).HasColumnName("idHangLoaiSanPham");

                entity.Property(e => e.NgayThemSanPham)
                    .HasColumnType("datetime")
                    .HasColumnName("ngayThemSanPham");

                entity.Property(e => e.Soluong).HasColumnName("soluong");

                entity.Property(e => e.TenSanPham)
                    .HasMaxLength(255)
                    .HasColumnName("tenSanPham");

                entity.Property(e => e.ThuTuSanPham).HasColumnName("thuTuSanPham");

                entity.Property(e => e.TrangThaiSp).HasMaxLength(50);

                entity.HasOne(d => d.IdHangLoaiSanPhamNavigation)
                    .WithMany(p => p.SanPhamLaptops)
                    .HasForeignKey(d => d.IdHangLoaiSanPham)
                    .HasConstraintName("FK_SanPhamLaptop_HangSanXuatLoaiSanPham2");

                entity.HasOne(d => d.MaDongSanPhamNavigation)
                    .WithMany(p => p.SanPhamLaptops)
                    .HasForeignKey(d => d.MaDongSanPham)
                    .HasConstraintName("FK_SanPhamLaptop_DongSanPham");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(255)
                    .HasColumnName("ID");

                entity.Property(e => e.Anh).HasMaxLength(255);

                entity.Property(e => e.Email).HasMaxLength(255);

                entity.Property(e => e.GioiTinh).HasMaxLength(255);

                entity.Property(e => e.LoaiNguoiDung).HasMaxLength(255);

                entity.Property(e => e.MatKhau).HasMaxLength(255);

                entity.Property(e => e.MatKhauNhapLai).HasMaxLength(255);

                entity.Property(e => e.TenDangNhap).HasMaxLength(255);

                entity.Property(e => e.TenNguoiDung).HasMaxLength(255);
            });

            modelBuilder.Entity<UserAddress>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.DiaChiNha)
                    .HasMaxLength(255)
                    .HasColumnName("Dia_Chi_Nha");

                entity.Property(e => e.IdnguoiDung)
                    .HasMaxLength(255)
                    .HasColumnName("IDNguoiDung");

                entity.Property(e => e.PhuongXa).HasMaxLength(255);

                entity.Property(e => e.QuanHuyen).HasMaxLength(255);

                entity.Property(e => e.QuocGia).HasMaxLength(255);

                entity.Property(e => e.ThanhPhoTinh).HasMaxLength(255);

                entity.HasOne(d => d.IdnguoiDungNavigation)
                    .WithMany(p => p.UserAddresses)
                    .HasForeignKey(d => d.IdnguoiDung)
                    .HasConstraintName("FK__UserAddre__IDNgu__7FEAFD3E");
            });

            modelBuilder.Entity<ViewedProduct>(entity =>
            {
                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("ID");

                entity.Property(e => e.ProductId)
                    .HasMaxLength(255)
                    .HasColumnName("ProductID");

                entity.Property(e => e.UserId)
                    .HasMaxLength(255)
                    .HasColumnName("UserID");

                entity.Property(e => e.ViewedDate).HasColumnType("datetime");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.ViewedProducts)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK__ViewedPro__Produ__1AD3FDA4");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.ViewedProducts)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK__ViewedPro__UserI__19DFD96B");
            });

            modelBuilder.Entity<WirelesSp>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("Wireles_SP");

                entity.Property(e => e.MaChsp).HasColumnName("Ma_CHSP");

                entity.Property(e => e.MaWireless)
                    .HasMaxLength(255)
                    .HasColumnName("Ma_Wireless");

                entity.Property(e => e.MaWirelessSp).HasColumnName("Ma_Wireless_SP");

                entity.HasOne(d => d.MaChspNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.MaChsp)
                    .HasConstraintName("FK_Wireles_SP_CauHinhSanPhamLaptop");

                entity.HasOne(d => d.MaWirelessNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.MaWireless)
                    .HasConstraintName("FK_Wireles_SP_Wireless");
            });

            modelBuilder.Entity<Wireless>(entity =>
            {
                entity.HasKey(e => e.IdWireless)
                    .HasName("PK__Wireless__A23D5921ABC3D9C3");

                entity.ToTable("Wireless");

                entity.Property(e => e.IdWireless)
                    .HasMaxLength(255)
                    .HasColumnName("idWireless");

                entity.Property(e => e.BangTanHoTro)
                    .HasMaxLength(255)
                    .HasColumnName("bangTanHoTro");

                entity.Property(e => e.TenWireless)
                    .HasMaxLength(255)
                    .HasColumnName("tenWireless");

                entity.Property(e => e.TocDoKetNoi)
                    .HasMaxLength(255)
                    .HasColumnName("tocDoKetNoi");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
