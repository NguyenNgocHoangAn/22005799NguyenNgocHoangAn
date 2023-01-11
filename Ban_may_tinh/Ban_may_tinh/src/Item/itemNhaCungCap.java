/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Item;

/**
 *
 * @author lvdinh
 */
public class itemNhaCungCap {
    String MaNhaCungCap;
    String TenNhaCungCap;
    String DiaChiNhaCungCap;
    String DienThoaiNhaCungCap;
    String Email;
    String GhiChu;
    public itemNhaCungCap(){
        
    }
    public itemNhaCungCap(String manhacungcap, String tennhacungcap, String diachinhacungcap,
            String dienthoainhacungcap, String email, String ghichu ){
        MaNhaCungCap=manhacungcap;
        TenNhaCungCap=tennhacungcap;
        DiaChiNhaCungCap=diachinhacungcap;
        DienThoaiNhaCungCap=dienthoainhacungcap;
        Email=email;
        GhiChu=ghichu;
    }
    public String getMaNhaCungCap() {
        return MaNhaCungCap;
    }

    public void setMaNhaCungCap(String MaNhaCungCap) {
        this.MaNhaCungCap = MaNhaCungCap;
    }

    public String getTenNhaCungCap() {
        return TenNhaCungCap;
    }

    public void setTenNhaCungCap(String TenNhaCungCap) {
        this.TenNhaCungCap = TenNhaCungCap;
    }

    public String getDiaChiNhaCungCap() {
        return DiaChiNhaCungCap;
    }

    public void setDiaChiNhaCungCap(String DiaChiNhaCungCap) {
        this.DiaChiNhaCungCap = DiaChiNhaCungCap;
    }

    public String getDienThoaiNhaCungCap() {
        return DienThoaiNhaCungCap;
    }

    public void setDienThoaiNhaCungCap(String DienThoaiNhaCungCap) {
        this.DienThoaiNhaCungCap = DienThoaiNhaCungCap;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getGhiChu() {
        return GhiChu;
    }

    public void setGhiChu(String GhiChu) {
        this.GhiChu = GhiChu;
    }
    
}
