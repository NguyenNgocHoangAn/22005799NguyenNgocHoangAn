/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bussiness;

import Data.classData;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author lvdinh
 */
public class BPhieuDatHang extends Bussiness{

    public BPhieuDatHang(){
        DB= new classData(4);
        SQL="";
        Table="VPhieuDatHang";
        ID="MaPhieuDatHang";
    }
   public boolean insertByProperties(String maphieudathang, String manhacungcap, String manhanvien, String ngaylapphieu){
       SQL="INSERT INTO PHIEUDATHANG VALUES('"
               +maphieudathang+"','"
               +manhacungcap+"','"
               +manhanvien+"','"
               +ngaylapphieu+"')";
       return insertBySQLString(SQL);
   }
   public boolean insertChiTietPhieuDatHang(String maphieudathang, String malinhkien, int soluong, BigDecimal dongia){
       SQL="SELECT SOLUONG FROM CHITIETPHIEUDATHANG WHERE MAPHIEUDATHANG = '"+maphieudathang+"' AND MALINHKIEN = '"+malinhkien+"'";
       ResultSet rs = getDataBySQLString(SQL);
        try {
            if(rs.next() &&rs.getInt("SOLUONG")>=0){
                soluong+=rs.getInt("SOLUONG");
                SQL="UPDATE CHITIETPHIEUDATHANG SET SOLUONG = '"+soluong+"' WHERE MAPHIEUDATHANG = '"+maphieudathang+"'"
                        +" AND MALINHKIEN = '"+malinhkien+"'";
            }
            else{
                    SQL="INSERT INTO CHITIETPHIEUDATHANG VALUES("
                   +"'"+maphieudathang+"',"
                   +"'"+malinhkien+"',"
                   +"'"+soluong+"',"
                   +"'"+dongia+"')";                 
            }
            return insertBySQLString(SQL);
        } catch (SQLException ex) {
            Logger.getLogger(BPhieuDatHang.class.getName()).log(Level.SEVERE, null, ex);
        }
       return false;
   }
   public ResultSet getChiTietPhieuDatHang(String maphieudathang){
       SQL="select tenlinhkien, ChiTietPhieuDatHang.MaLinhKien, soluong, dongia" +
            " from ChiTietPhieuDatHang, LinhKien" +
            " where ChiTietPhieuDatHang.MaLinhKien=LinhKien.MaLinhKien" +
            " and ChiTietPhieuDatHang.MaPhieuDatHang= '"+maphieudathang+"'";
       return getDataBySQLString(SQL);
   }
   public ResultSet getAllMaLinhKienPhieuDatHang(String maphieudathang){
       SQL="select tenlinhkien, chitietphieudathang.MaLinhKien from linhkien, ChiTietPhieuDatHang where "
               + "chitietphieudathang.malinhkien = linhkien.malinhkien and MaPhieuDatHang= '"+maphieudathang+"'";
       return getDataBySQLString(SQL);
   }
   public boolean updateByProperties(String maphieudathang, String manhacungcap, String manhanvien, String ngaylap){
       
       SQL="UPDATE PHIEUDATHANG SET "
               +" MANHACUNGCAP = '"+manhacungcap+"', "
               +" MANHANVIENDATHANG = '"+manhanvien+"',"
               +" NGAYLAPPHIEUDATHANG = '"+ngaylap+"'"
               +" WHERE MAPHIEUDATHANG = '"+maphieudathang+"'";
       return updateBySQLString(SQL);
   }
   public boolean deleteMaLinhKienChiTietPhieuDatHang(String maphieudathang, String malinhkien){
           SQL="DELETE CHITIETPHIEUDATHANG WHERE MAPHIEUDATHANG = '"+maphieudathang+"' AND MALINHKIEN = '"+malinhkien+"'";
           return updateBySQLString(SQL);
   }
   public boolean updateSoLuongChiTietPhieuDatHang(String maphieudathang, String malinhkien, int soluong){
       if(soluong<=0){
           SQL="DELETE CHITIETPHIEUDATHANG WHERE MAPHIEUDATHANG = '"+maphieudathang+"' AND MALINHKIEN = '"+malinhkien+"'";
           return updateBySQLString(SQL);
       }else{
        SQL="UPDATE CHITIETPHIEUDATHANG SET "
                +"SOLUONG = '"+soluong+"'"
                +" WHERE MAPHIEUDATHANG = '"+maphieudathang+"'"
                +" AND MALINHKIEN = '"+malinhkien+"'";
        return updateBySQLString(SQL);
       }
   }
   public ResultSet searchAllPhieuDatHang(String S){
       SQL="SELECT * FROM "+Table+" WHERE "
               +" MAPHIEUDATHANG LIKE N'%"+S+"%'"
               +" OR TENNHACUNGCAP LIKE N'%"+S+"%'"
               +" OR TENNHANVIENDATHANG LIKE N'%"+S+"%'"
               +" OR NGAYLAPPHIEUDATHANG LIKE N'%"+S+"%'";
       return getDataBySQLString(SQL);
   }
   public ResultSet getAllPhieuDatHangNative(){
       SQL="SELECT *FROM PHIEUDATHANG";
       return getDataBySQLString(SQL);
   }
   public ResultSet searchAllChiTietPhieuDatHang(String S1, String S2){
            SQL="select tenlinhkien, ChiTietPhieuDatHang.MaLinhKien, soluong, dongia" +
                  " from ChiTietPhieuDatHang, LinhKien" +
                  " where ChiTietPhieuDatHang.MaLinhKien=LinhKien.MaLinhKien" +
                 " and ChiTietPhieuDatHang.MaPhieuDatHang= '"+S1+"'"
                    +" AND (TENLINHKIEN LIKE'%"+S2+"%'"
                    +" OR CHITIETPHIEUDATHANG.MALINHKIEN LIKE '%"+S2+"%'"
                    +" OR SOLUONG LIKE '%"+S2+"%'"
                    +" OR DONGIA LIKE '%"+S2+"%')";
            return getDataBySQLString(SQL);
   }

//    public boolean updateByProperties(String toString, String get, int i, String string) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
}
