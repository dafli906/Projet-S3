package org.register.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import org.register.Donnateur;

public class DonnateurDB {
       public static Connection getConnection(){
    Connection conn=null;
    try{
     Class.forName("org.apache.derby.jdbc.ClientDriver");
     conn =DriverManager.getConnection("jdbc:derby://localhost:1527/DB","APP","azerty");         
    } catch(Exception e){
         System.out.println(e);
    }
    return conn;
}
    
    public static int save(Donnateur d){
       int status=0;
       try{
           Connection conn=DonnateurDB.getConnection();
           PreparedStatement ps=conn.prepareStatement("insert into DONNATEUR values(?,?,?,?)");
           ps.setString(1,d.getUsername());
           ps.setString(2,d.getNom());
           ps.setString(3,d.getPrenom());
           ps.setString(4,d.getMdp());
           status=ps.executeUpdate();
           conn.close();
           
       }catch (Exception e){ System.out.println(e);}
       return status;
    }
}
