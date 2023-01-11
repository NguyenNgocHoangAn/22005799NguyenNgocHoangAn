/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Item;

/**
 *
 * @author lvdinh
 */
public class itemBaseLinhKien {
    String MaLoaiLinhKien;
    String MaLinhkien;
    String TenLinhKien;

    public itemBaseLinhKien(){
        
    }
    public itemBaseLinhKien(String maloailinhkien, String malinhkien, String tenlinhkien){
        MaLinhkien=malinhkien;
        MaLoaiLinhKien=maloailinhkien;
        TenLinhKien=tenlinhkien;
    }
    public String getMaLoaiLinhKien() {
        return MaLoaiLinhKien;
    }

    public void setMaLoaiLinhKien(String MaLoaiLinhKien) {
        this.MaLoaiLinhKien = MaLoaiLinhKien;
    }

    public String getMaLinhkien() {
        return MaLinhkien;
    }

    public void setMaLinhkien(String MaLinhkien) {
        this.MaLinhkien = MaLinhkien;
    }

    public String getTenLinhKien() {
        return TenLinhKien;
    }

    public void setTenLinhKien(String TenLinhKien) {
        this.TenLinhKien = TenLinhKien;
    }
    
}
