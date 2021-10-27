/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Libro;
import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class LibroDAO2 extends Conexion{
    
    public boolean agregar(String libro_titulo, String categoria_name,String autor_name,String editor_name,String edicion,String volumen,String isbn,String precio,String idioma,String descripcion)
    {
        PreparedStatement pst =null;
        
        try {
            String consulta ="INSERT INTO libros (libro_titulo, categoria_name, autor_name, editor_name, edicion, volumen, isbn, precio, idioma, descripcion) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pst=conectar().prepareStatement(consulta);
            pst.setString(1,libro_titulo);
            pst.setString(2,categoria_name);
            pst.setString(3,autor_name);
            pst.setString(4,editor_name);
            pst.setString(5,edicion);
            pst.setString(6,volumen);
            pst.setString(7,isbn);
            pst.setString(8,precio);
            pst.setString(9,idioma);
            pst.setString(10,descripcion);
            
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
    Libro li=new Libro();
    
    public List listar(){
    
    ArrayList<Libro>list=new ArrayList<>();
    String sql="SELECT * FROM `libros`";
    
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
            
            Libro lir = new Libro();
            lir.setLibro_titulo(rs.getString("libro_titulo"));
            list.add(lir);
            }
            
        } catch (Exception e) {
        }
    
    return list;}
    
   
}
