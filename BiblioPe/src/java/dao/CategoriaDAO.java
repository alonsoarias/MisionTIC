/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Categoria;
import bean.Libro;
import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class CategoriaDAO extends Conexion{


    public boolean añcagetoria (String category_name, String profile, String added_on){
      PreparedStatement pst =null;
        
        try {
            String consulta ="INSERT INTO categoria (category_name, profile , added_on) VALUES (?, ?, ?)";
            pst=conectar().prepareStatement(consulta);
          pst.setString(1, category_name);
          pst.setString(2, profile);
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
    Categoria cat=new Categoria();
    public List listar(){
    
    ArrayList<Categoria>list=new ArrayList<>();
    String sql="SELECT * FROM `categoria`";
    
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
            
            Categoria lir = new Categoria();
            lir.setCategory_name(rs.getString("category_name"));
            list.add(lir);
            }
            
        } catch (Exception e) {
        }
    
    return list;}
    
    
    
    }
