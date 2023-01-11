/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Item;

/**
 *
 * @author lvdinh
 */
public class itemPhieuNhap{
    String MaPhieuNhap;
    String MaPhieuDatHang;
    String TenNhaCungCap;
    String TenNhanVienLapPhieuNhap;
    String NgayLapPhieuNhap;
    public itemPhieuNhap(){
        
    }
    public itemPhieuNhap(String maphieunhap, String maphieudathang, String tennhacungcap,
            String tennhanvien, String ngaylapphieunhap){
        MaPhieuNhap=maphieunhap;
        MaPhieuDatHang=maphieudathang;
        TenNhaCungCap=tennhacungcap;
        TenNhanVienLapPhieuNhap=tennhanvien;
        NgayLapPhieuNhap=ngaylapphieunhap;
    }
    public String getMaPhieuNhap() {
        return MaPhieuNhap;
    }

    public void setMaPhieuNhap(String MaPhieuNhap) {
        this.MaPhieuNhap = MaPhieuNhap;
    }

    public String getMaPhieuDatHang() {
        return MaPhieuDatHang;
    }

    public void setMaPhieuDatHang(String MaPhieuDatHang) {
        this.MaPhieuDatHang = MaPhieuDatHang;
    }

    public String getTenNhaCungCap() {
        return TenNhaCungCap;
    }

    public void setTenNhaCungCap(String TenNhaCungCap) {
        this.TenNhaCungCap = TenNhaCungCap;
    }

    public String getTenNhanVienLapPhieuNhap() {
        return TenNhanVienLapPhieuNhap;
    }

    public void setTenNhanVienLapPhieuNhap(String TenNhanVien) {
        this.TenNhanVienLapPhieuNhap = TenNhanVien;
    }

    public String getNgayLapPhieuNhap() {
        return NgayLapPhieuNhap;
    }

    public void setNgayLapPhieuNhap(String NgayLapPhieuNhap) {
        this.NgayLapPhieuNhap = NgayLapPhieuNhap;
    }

}
