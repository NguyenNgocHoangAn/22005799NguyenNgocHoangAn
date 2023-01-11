/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bussiness;

import Data.classData;
import java.sql.ResultSet;

/**
 *
 * @author lvdinh
 */
public class BSanPham extends Bussiness{
    public BSanPham(){
        DB= new classData(4);
        Table="VChiTietLinhKien";
        ID="MaLinhKien";     
    }
    public ResultSet getDonViTinh(){
        SQL="SELECT DISTINCT DonViTinh FROM DONVITINH";
        return super.getDataBySQLString(SQL);
    }
    public ResultSet getMaPhieuNhap(){
        SQL="SELECT Distinct MaPhieuNhap FROM PHIEUNHAP";
        return super.getDataBySQLString(SQL);
    }
    public ResultSet getAllMaLinhKien(){
        SQL="SELECT MALINHKIEN, TENLINHKIEN FROM LINHKIEN";
        return super.getDataBySQLString(SQL);
    }
    public ResultSet getMaLinhKienByMaPhieuNhap(String maphieunhap){
        SQL="SELECT DISTINCT MALINHKIEN FROM CHITIETPHIEUNHAP WHERE MAPHIEUNHAP = '"+maphieunhap+"'";
        return super.getDataBySQLString(SQL);
    }
    public ResultSet searchByProperties(int[] pro, String value){
        SQL="SELECT *FROM "+Table+" WHERE MaLinhKien ='' ";
        
        if(pro[0]==1) SQL+=" OR TenLoaiLinhKien like '%"+value+"%'";
        if(pro[1]==1) SQL+=" OR MaLinhKien like '%"+value+"%'";
        if(pro[2]==1) SQL+=" OR TenLinhkien like '%"+value+"%'";
        if(pro[3]==1) SQL+=" OR TenNhaCungCap like '%"+value+"%'";
        
        if(pro[4]==1) SQL+=" OR DonViTinh like '%"+value+"%'";
        if(pro[5]==1) SQL+=" OR ThoiGianBaoHanh like '%"+value+"%'";
        if(pro[6]==1) SQL+=" OR SoLuongTon like '%"+value+"%'";
        if(pro[7]==1) SQL+=" OR MoTaLinhKien like '%"+value+"%'";
        if(pro[8]==1) SQL+=" OR MaPhieuNhap like '%"+value+"%'";
        
        SQL += " OR MaLinhKien = ''";
        
        return super.searchAll(SQL);
        
    }
    public boolean updateByProperties(String malinhkien, String tenlinhkien, String tenloailinhkien,
            String donvitinh, int thoigianbaohanh, String motalinhkien, String hinhanh){
        String maloailinhkien = (new BLoaiLinhKien()).getMaLoaiLinhKien(tenloailinhkien);
        SQL="UPDATE LINHKIEN SET"
                + " TENLINHKIEN = N'"+tenlinhkien+"',"
                + " MALOAILINHKIEN = N'"+maloailinhkien+"',"
                + " DONVITINH = N'"+donvitinh+"',"
                + " THOIGIANBAOHANH = '"+thoigianbaohanh+"',"
                + " MOTALINHKIEN = N'"+motalinhkien+"',"
                + " HINHANH = '"+hinhanh+"'"
                + " WHERE MALINHKIEN = '"+malinhkien+"'";
        return super.updateBySQLString(SQL);
    }
}
