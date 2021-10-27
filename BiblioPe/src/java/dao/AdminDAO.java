/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.AdminBean;
import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdminDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    AdminBean au=new AdminBean();
    public List listar(){
    
    ArrayList<AdminBean>list=new ArrayList<>();
    String sql="SELECT * FROM `usuarios`";
    
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
            
            AdminBean lir = new AdminBean();
            lir.setUser(rs.getString("user"));
            list.add(lir);
            }
            
        } catch (Exception e) {
        }
    
    return list;}
   
    
}
