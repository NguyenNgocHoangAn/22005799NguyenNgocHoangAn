/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Item;

/**
 *
 * @author lvdinh
 */
public class itemPhieuDatHang {
    String MaPhieuDatHang;
    String TenNhaCungCap;
    String TenNhanVienDatHang;
    String NgayLapPhieuDatHang;
    public itemPhieuDatHang(){
        
    }
    public itemPhieuDatHang(String maphieudathang, String tennhacungcap, String tennhanviendathang, String ngaylapphieudathang){
        MaPhieuDatHang=maphieudathang;
        TenNhaCungCap=tennhacungcap;
        TenNhanVienDatHang=tennhanviendathang;
        NgayLapPhieuDatHang=ngaylapphieudathang;
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

    public String getTenNhanVienDatHang() {
        return TenNhanVienDatHang;
    }

    public void setTenNhanVienDatHang(String TenNhanVienDatHang) {
        this.TenNhanVienDatHang = TenNhanVienDatHang;
    }

    public String getNgayLapPhieuDatHang() {
        return NgayLapPhieuDatHang;
    }

    public void setNgayLapPhieuDatHang(String NgayLapPhieuDatHang) {
        this.NgayLapPhieuDatHang = NgayLapPhieuDatHang;
    }
    
            
}
