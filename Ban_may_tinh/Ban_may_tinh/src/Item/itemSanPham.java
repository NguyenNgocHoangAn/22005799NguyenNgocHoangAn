/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Item;

/**
 *
 * @author lvdinh
 */
public class itemSanPham {
    String MaPhieuNhap;
    String TenLoaiLinhKien;
    String MaLinhKien;
    String TenLinhKien;
    String TenNhaCungCap;
    String DonViTinh;
    int ThoiGianBaoHanh;
    int SoLuongTon;
    String MoTaLinhKien;
    String HinhAnh;
    public itemSanPham(String maphieunhap,String tenloailinhkien, String malinhkien, String tenlinhkien,
            String tenhacungcap, String donvitinh, int thoigianbaohanh, int soluongton, String motalinhkien,
            String hinhanh){
        MaPhieuNhap=maphieunhap;
        TenLoaiLinhKien=tenloailinhkien;
        MaLinhKien=malinhkien;
        TenLinhKien = tenlinhkien;
        TenNhaCungCap=tenhacungcap;
        DonViTinh=donvitinh;
        ThoiGianBaoHanh=thoigianbaohanh;
        SoLuongTon=soluongton;
        MoTaLinhKien=motalinhkien;
        HinhAnh=hinhanh;
    }

    public String getMaPhieuNhap() {
        return MaPhieuNhap;
    }

    public void setMaPhieuNhap(String MaPhieuNhap) {
        this.MaPhieuNhap = MaPhieuNhap;
    }
    public String getTenLoaiLinhKien() {
        return TenLoaiLinhKien;
    }

    public void setTenLoaiLinhKien(String TenLoaiLinhKien) {
        this.TenLoaiLinhKien = TenLoaiLinhKien;
    }

    public String getMaLinhKien() {
        return MaLinhKien;
    }

    public void setMaLinhKien(String MaLinhKien) {
        this.MaLinhKien = MaLinhKien;
    }

    public String getTenLinhKien() {
        return TenLinhKien;
    }

    public void setTenLinhKien(String TenLinhKien) {
        this.TenLinhKien = TenLinhKien;
    }

    public String getTenNhaCungCap() {
        return TenNhaCungCap;
    }

    public void setTenNhaCungCap(String TenNhaCungCap) {
        this.TenNhaCungCap = TenNhaCungCap;
    }

    public String getDonViTinh() {
        return DonViTinh;
    }

    public void setDonViTinh(String DonViTinh) {
        this.DonViTinh = DonViTinh;
    }

    public int getThoiGianBaoHanh() {
        return ThoiGianBaoHanh;
    }

    public void setThoiGianBaoHanh(int ThoiGianBaoHanh) {
        this.ThoiGianBaoHanh = ThoiGianBaoHanh;
    }

    public int getSoLuongTon() {
        return SoLuongTon;
    }

    public void setSoLuongTon(int SoLuongTon) {
        this.SoLuongTon = SoLuongTon;
    }

    public String getMoTaLinhKien() {
        return MoTaLinhKien;
    }

    public void setMoTaLinhKien(String MoTaLinhKien) {
        this.MoTaLinhKien = MoTaLinhKien;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }
    

}
