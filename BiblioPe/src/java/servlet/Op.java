/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import conexion.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Op extends Conexion{
    private Statement statement;
    private Statement statement2;
    private ResultSet resulset;
    private ResultSet resulset2;
    public Op() {
    }  
    public ResultSet getDatos(String sql){        
        try {
            statement = this.conectar().createStatement();
            resulset= statement.executeQuery(sql);
                      
        } catch (SQLException ex) {
             resulset= null;
             System.out.println(ex);             
        }
        return resulset;
    }
    
     public ResultSet getDatos2(String sql2){        
        try {
            statement2 = this.conectar().createStatement();
            resulset2= statement2.executeQuery(sql2);
                      
        } catch (SQLException ex) {
             resulset2= null;
             System.out.println(ex);             
        }
        return resulset2;
    }
     
     public void insertar (){
     
     
     }

     /*public static void main(String[] args) {
        Operaciones op = new Operaciones();
        op.getDatos("SELECT * FROM `user`");
    }*/
}
