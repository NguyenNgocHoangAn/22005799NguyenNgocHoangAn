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
public class BLinhKienBase extends Bussiness{
    public BLinhKienBase(){
        Table="LinhKien";
        ID="MaLinhKien";
        DB=new classData(4);
        SQL="";
    }
    public boolean insertBaseProperties(String maloailinhkien, String malinhkien, String tenlinhkien){
        SQL="INSERT INTO LINHKIEN(MALOAILINHKIEN, MALINHKIEN, TENLINHKIEN) VALUES('"+maloailinhkien+"',"+
                "'"+malinhkien+"','"+tenlinhkien+"')";
        return insertBySQLString(SQL);
    }
    public boolean updateBaseProperties(String maloailinhkien, String malinhkien, String tenlinhkien){
        SQL="UPDATE LINHKIEN SET "
                +" MALOAILINHKIEN = N'"+maloailinhkien+"',"
                +" TENLINHKIEN = N'"+tenlinhkien+"'"
                +" WHERE MALINHKIEN = N'"+malinhkien+"'";
        return updateBySQLString(SQL);
    }
    public ResultSet getBaseProperties(){
        SQL="SELECT MALOAILINHKIEN, MALINHKIEN, TENLINHKIEN FROM LINHKIEN";
        return getDataBySQLString(SQL);
    }
}
