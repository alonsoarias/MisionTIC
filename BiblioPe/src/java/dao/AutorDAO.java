/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Autor;
import bean.Categoria;
import conexion.Conexion;
import static conexion.Conexion.conectar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class AutorDAO extends Conexion{
    public boolean agregar (String autor_name, String perfil, String added_on){
    PreparedStatement pst =null;
        
        try {
            String consulta ="INSERT INTO autor (autor_name , perfil , added_on) VALUES (?, ?, ?)";
            pst=conectar().prepareStatement(consulta);
          pst.setString(1, autor_name);
          pst.setString(2, perfil);
          pst.setString(3, added_on);
            
            if(pst.executeUpdate()==1){
            return true;
            
            }
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
        finally{
            try {
                if(conectar()!=null)conectar().close();
                if(pst!=null)pst.close();
            } catch (Exception e) {
                System.out.println("Error"+e);
            }
        }
    
     return false;
    }
    
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Autor au=new Autor();
    public List listar(){
    
    ArrayList<Autor>list=new ArrayList<>();
    String sql="SELECT * FROM `autor`";
    
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
            
            Autor lir = new Autor();
            lir.setAutor_name(rs.getString("autor_name"));
            list.add(lir);
            }
            
        } catch (Exception e) {
        }
    
    return list;}
    
    }

