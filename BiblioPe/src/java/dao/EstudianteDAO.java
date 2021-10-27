/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Estudiante;
import bean.Libro;
import conexion.Conexion;
import static conexion.Conexion.conectar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class EstudianteDAO extends Conexion {
    
    public boolean addestu(String student_name,String student_app, String nivel, String grado,String seccion, String book_name , String tprest,String estado){
    PreparedStatement pst =null;
        
        try {
            String consulta ="INSERT INTO estudiantes (student_name, student_app , nivel,grado,seccion,book_name,tprest,estado) VALUES (?, ?, ?,?,?,?,?,?)";
            pst=conectar().prepareStatement(consulta);
          pst.setString(1, student_name);
          pst.setString(2, student_app);
          pst.setString(3, nivel);
          pst.setString(4, grado);
          pst.setString(5, seccion);
          pst.setString(6, book_name);
          pst.setString(7, tprest);
          pst.setString(8, estado);
            
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
    Estudiante li=new Estudiante();
    
    public List listar(){
    
    ArrayList<Estudiante>list=new ArrayList<>();
    String sql="SELECT * FROM `estudiantes`";
    
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
            
            Estudiante lir = new Estudiante();
            lir.setStudent_id(rs.getString("student_id"));
            lir.setStudent_name(rs.getString("student_name"));
            lir.setStudent_app(rs.getString("student_app"));
            lir.setNivel(rs.getString("nivel"));
            lir.setGrado(rs.getString("grado"));
            lir.setSeccion(rs.getString("seccion"));
            lir.setBook_name(rs.getString("book_name"));
            lir.setTprest(rs.getString("tprest"));
            lir.setEstado(rs.getString("estado"));
            list.add(lir);
            }
            
        } catch (Exception e) {
        }
    
    return list;}
    
    
}
