package org.register.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import org.register.Association;



public class AssociationDB {
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
    
    public static int save(Association A){
       int status=0;
       try{
           Connection conn=DonnateurDB.getConnection();
           PreparedStatement ps=conn.prepareStatement("insert into ASSOCIATION values(?,?,?,?,?,?)");
           ps.setString(1,A.getUsername());
           ps.setString(2,A.getNom_association());
           
           ps.setString(3,A.getAdresse());
           ps.setString(4,A.getVille());
           ps.setString(5,A.getCompte());
           ps.setString(6,A.getMdp());
           status=ps.executeUpdate();
           conn.close();
           
       }catch (Exception e){ System.out.println(e);}
       return status;
    }
}


