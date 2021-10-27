/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;


import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class usuarioslogin extends Conexion{
   public boolean validarUsuario(String usuario, String contraseña) {
       
    PreparedStatement pst=null;
    ResultSet rs =null;
       try {
           String consulta = "select * from usuarios where user=? and pass=?";
         pst = conectar().prepareStatement(consulta);
         pst.setString(1, usuario);
         pst.setString(2, contraseña);
         rs=pst.executeQuery();
         if(rs.absolute(1)){
         return true;}
       } catch (Exception e) {
           System.out.println("Error"+e);
       }
       finally{
           try {
                if(conectar()!=null) conectar().close();
                if(pst!=null) pst.close();
                if(rs!=null) rs.close();
      
           } catch (Exception e) {
               System.out.println("Error"+e);
           }
       }

return false;
       }
   

}
