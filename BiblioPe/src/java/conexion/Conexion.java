
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
 private static Connection conn=null;
    private String server="localhost";
    private String bd="biblioteca";
    private String port="3306";
    private String user="newuser";
    private String passw="password";

    public Conexion() {        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://"+server+"/"+bd;           
                conn= DriverManager.getConnection(url, user, passw);
             }catch (SQLException ex) {
                System.out.println(ex);
            }
        catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }          
    }
  public static Connection conectar(){
    return conn;
  }
  public Connection closeConexion(){
        try {
            conn.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        conn=null;
        return conn;
  }   
}
