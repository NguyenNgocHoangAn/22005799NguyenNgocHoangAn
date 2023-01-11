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
public class BPhieuNhap extends Bussiness{
    public BPhieuNhap(){
        DB=new classData(4);
        SQL="";
        Table="VPhieuNhap";
        ID="MaPhieuNhap";
    }
    public ResultSet getChiTietPhieuNhap(String maphieunhap){
        SQL="select linhkien.MaLinhKien, tenlinhkien, soluong from chitietphieunhap, linhkien, chitietphieudathang" +
            " where linhkien.malinhkien = chitietphieunhap.MaLinhKien " +
            " and linhkien.malinhkien=ChiTietPhieuDatHang.MaLinhKien " +
            " and ChiTietPhieuNhap.MaPhieuNhap='"+maphieunhap+"'";
        return getDataBySQLString(SQL);
        
    }
    public boolean insertByProperties(String maphieudathang, String maphieunhap, String manhanviennhap, String ngaylapphieunhap){
        SQL="INSERT INTO PHIEUNHAP VALUES('"+maphieudathang+"','"+maphieunhap+"','"+manhanviennhap+"','"+ngaylapphieunhap+"')";
        return updateBySQLString(SQL);
    }
    public boolean insertChiTietPhieuNhap(String maphieunhap, String malinhkien){
        
        SQL="INSERT INTO CHITIETPHIEUNHAP VALUES('"+maphieunhap+"','"+malinhkien+"')";
        return insertBySQLString(SQL);
    }
    public boolean insertChiTietPhieuNhap2(String maphieunhap, String maphieudathang, String malinhkien){
        
        SQL="IF (SELECT SOLUONG FROM chitietphieudathang WHERE MALINHKIEN='"+malinhkien+
                "' and maphieudathang = '"+maphieudathang+"')>0"+" INSERT INTO CHITIETPHIEUNHAP VALUES('"
                +maphieunhap+"','"+malinhkien+"')";
        return insertBySQLString(SQL);
    }
}
