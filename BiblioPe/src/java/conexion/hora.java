/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.TimeZone;


public class hora {
    
    
 public String horax(){
       TimeZone.setDefault(TimeZone.getTimeZone("GMT-5"));
                                SimpleDateFormat formato = new SimpleDateFormat("dd-MMM-yyyy hh:mm a");
                                Date fecha = new Date();
                                String dia = formato.format(fecha);
  return dia;
  }

   


}

  