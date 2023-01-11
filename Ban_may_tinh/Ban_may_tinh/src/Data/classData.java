/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

/**
 *
 * @author tnguyen89
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class classData {

    private Connection conDB = null;
    private Statement stmDB = null;
    private ResultSet rsDB = null;
    private CallableStatement cstmDB = null;
    
    private String serverName = "ADMIN"; 
    private String port ="1433";
    private String instanceName = "";
    private String databaseName = "QUANLIBANLAPTOP";
    private String username = "sa";
    private String password = "1234";
    private String url = "";
    private int sourceType = 0;

    public classData() {
    }

    public classData(int _sourceType) {
        sourceType = _sourceType;
    }

    private boolean connectDB() {
        boolean res = true;

        try {
            if ((conDB != null) && (!conDB.isClosed()) ) {
                conDB.close();
            }            
            
            if (sourceType == 1) //mySQL
            {
                Class.forName("org.gjf.mm.mysql.Driver");

                instanceName = "";
                url = "jdbc:mysql://" + serverName + "/" + databaseName;
            } else if (sourceType == 2) //Oracle
            {
                //Class.forName("oracle.jdbc.driver.OracleDriver");

                //instanceName = "";
                //url = "jdbc:sqlserver://" + serverName
                //        + ";instanceName=" + instanceName
                //        + ";databaseName=" + databaseName;
            } else if (sourceType == 3) //SQL Server - ODBC
            {
                //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                //instanceName = "MSSQLServer";
                //url = "jdbc:sqlserver://" + serverName
                //        + ";instanceName=" + instanceName
                //        + ";databaseName=" + databaseName;
            } else if (sourceType == 4) //SQL Server - Native
            {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               
                instanceName = "MSSQLServer";
                url = "jdbc:sqlserver://" + serverName
                        + ":"+port
                        + ";instanceName=" + instanceName
                        + ";databaseName=" + databaseName;
            }

            conDB = DriverManager.getConnection(url, username, password);

            if (conDB == null) {
                res = false;
            }
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println("Ngoại lệ tại classData.connectDB: !" +ex.getMessage());
            res = false;
        }
        finally{        
        }
        return res;
    }

    private boolean closeDB() {
        boolean res = true;
        try {
            if (!conDB.isClosed()) {
                conDB.close();
            }
        } catch (Exception ex) {
            res = false;
        }
        return res;
    }

    public ResultSet getData(String _query) {
        ResultSet res = null;
        try {
            if (connectDB()) {
                cstmDB = conDB.prepareCall(_query);   //query in format "{? = call myfunc}"
                res = cstmDB.executeQuery();                
                //stmDB = conDB.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                //res = stmDB.executeQuery(_query);
            }
        } catch (Exception ex) {
            res = null;
            System.out.println("Ngoại lệ tại classData.getData: "+ex.getMessage());
        } finally {
            //closeDB();
        }

        return res;
    }

    public boolean updateData(String _query) throws SQLException{
        boolean res = true;

        try {
            if (connectDB()) {
                //cstmDB = conDB.prepareCall(_query);   //query in format {? = call myfunc}    
                //cstmDB.executeUpdate();
                
                stmDB = conDB.createStatement();
                stmDB.executeUpdate(_query);
            }

        } catch (Exception ex) {
            res = false;
            System.out.println("Lỗi khi update DB classData: "+ex.getMessage());
        } finally {
            closeDB();
        }

        return res;
    }
}
