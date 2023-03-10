/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bussiness;

import Data.classData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author lvdinh
 */
public class Bussiness{
        classData DB;
        String SQL;
        String Table;
        String ID;
    public Bussiness(){ 
        }
    public Bussiness(classData db, String table, String ID){
        this.DB=db;
        this.Table=table;
        this.ID=ID;
    }
    public Bussiness(classData db, String table){
        this.DB=db;
        this.Table=table;
    }
    
    //-----------------------------------------------
    public ResultSet getAll(){
        SQL="SELECT * FROM "+Table;
        ResultSet rs = DB.getData(SQL);
        return DB.getData(SQL);
    }
    //-----------------------------------------------
    public ResultSet getByID(String id){
        SQL="SELECT * FROM "+Table+" where "+ID+" = N'"+id+"'";
        return DB.getData(SQL);
    }
    //-----------------------------------------------
    public ResultSet searchByID(String id){
       SQL="SELECT *FROM "+Table+" WHERE "+ID+" LIKE '%"+id+"%'";
       return DB.getData(SQL);
    }
    public ResultSet searchAll(String s){
        return DB.getData(s);
    }
    public boolean deleteByID(String id){
        SQL="DELETE "+Table+" WHERE "+ID+" = '"+id+"'";
            try {
                if(DB.updateData(SQL)){
                    System.out.println("Xóa thành công cho ID số: "+id);
                    return true;
                }
            } catch (SQLException ex) {
                Logger.getLogger(Bussiness.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println("Ngoại lệ khi xóa ID số: "+ID+": "+ex.getMessage());
                
            }
            return false;
    }
    public boolean updateBySQLString(String s){
        DB=new classData(4);
            try {
                if(DB.updateData(s))
                 return true;
            } catch (SQLException ex) {
                //System.out.
                Logger.getLogger(Bussiness.class.getName()).log(Level.SEVERE, null, ex);
            }
        return false;
    }
    public boolean insertBySQLString(String s){
        return updateBySQLString(s);
    }
    public ResultSet getDataBySQLString(String s){
        return DB.getData(s);
    }
}
