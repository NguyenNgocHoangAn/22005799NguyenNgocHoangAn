/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bussiness;

import Data.classData;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author lvdinh
 */
public class BNhaCungCap extends Bussiness {
    public BNhaCungCap(){
        Table="NhaCungCap";
        DB=new classData(4);
        ID="MaNhaCungCap";
        SQL=""; 
    }   
    public boolean updateByProperties(String manhacungcap, String tennhacungcap, String diachinhacungcap,
            String dienthoainhacungcap, String emailnhacungcap, String ghichunhacungcap){
       
        SQL="UPDATE NHACUNGCAP SET "    
                +" TENNHACUNGCAP = N'"+tennhacungcap+"',"
                +" DIACHINHACUNGCAP = N'"+diachinhacungcap+"',"
                +" DIENTHOAINHACUNGCAP = N'"+dienthoainhacungcap+"', "
                +" EMAIL = N'"+emailnhacungcap+"', "
                +" GHICHU = N'"+ghichunhacungcap+"' "
                +"WHERE  MANHACUNGCAP = N'"+manhacungcap+"'";
        return super.updateBySQLString(SQL);
    } 
    public boolean insertByProperties(String manhacungcap, String tennhacungcap, String diachinhacungcap,
            String dienthoainhacungcap, String email, String ghichu){
        SQL="INSERT INTO NHACUNGCAP VALUES("
                +"'"+manhacungcap+"',N'"
                +tennhacungcap+"',N'"
                +diachinhacungcap+"',N'"
                +dienthoainhacungcap+"',N'"
                +email+"',N'"
                +ghichu+"')";
        return super.insertBySQLString(SQL);
    }
    public String getMaNhaCungCap(String tennhacungcap){
        SQL="SELECT MANHACUNGCAP WHERE TENNHACUNGCAP = '"+tennhacungcap+"'";
        try {
            return super.getDataBySQLString(ID).getString("MaNhaCungCap");
        } catch (SQLException ex) {
            Logger.getLogger(BNhaCungCap.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "null";
    }
}
