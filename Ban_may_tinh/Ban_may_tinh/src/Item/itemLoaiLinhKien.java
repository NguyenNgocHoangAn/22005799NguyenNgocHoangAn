/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Item;

/**
 *
 * @author lvdinh
 */
public class itemLoaiLinhKien {
    String MaLoaiLinhKien;
    String TenLoaiLinhKien;
    String GhiChu;
    public itemLoaiLinhKien(){
        
    }
    public itemLoaiLinhKien(String maloailinhkien, String tenloailinhkien, String ghichu){
        MaLoaiLinhKien=maloailinhkien;
        TenLoaiLinhKien=tenloailinhkien;
        GhiChu=ghichu;
    }
    public String getMaLoaiLinhKien() {
        return MaLoaiLinhKien;
    }

    public void setMaLoaiLinhKien(String MaLoaiLinhKien) {
        this.MaLoaiLinhKien = MaLoaiLinhKien;
    }

    public String getTenLoaiLinhKien() {
        return TenLoaiLinhKien;
    }

    public void setTenLoaiLinhKien(String TenLoaiLinhKien) {
        this.TenLoaiLinhKien = TenLoaiLinhKien;
    }

    public String getGhiChuLinhKien() {
        return GhiChu;
    }

    public void setGhiChu(String GhiChu) {
        this.GhiChu = GhiChu;
    }

}
