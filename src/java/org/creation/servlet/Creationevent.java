package org.creation.servlet;

import java.io.File;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "Creationevent", urlPatterns = {"/Creationevent"})
@MultipartConfig(fileSizeThreshold= 1024 * 1024 *2,
        maxFileSize= 1024 *1024 * 10,
        maxRequestSize= 1024 * 1024 * 50)
public class Creationevent extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String nomevent=request.getParameter("nomevent");
        String description=request.getParameter("description");
        Part part=request.getPart("file");
        String filename= extractFileName(part);
        String savepath="C:\\Users\\MOUNA\\Documents\\NetBeansProjectse\\mavenproject1\\ProjetS3\\web\\images" + File.separator + filename ;
        File filesaveDir=new File(savepath);
        part.write(filesaveDir + File.separator);
        
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
                Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/DB","APP","azerty");
                String Query="insert into EVENEMENT values(?,?,?,?) ";
                PreparedStatement psm=conn.prepareStatement(Query);
                psm.setString(1,nomevent);
                psm.setString(2,description);
                psm.setString(3,savepath);
                psm.setString(4,filename);
                psm.executeQuery();
                out.println("l'événement est ajouté");                                
        }catch(Exception e){ 
                out.println(e);
        }    
    }
    private String extractFileName(Part part){
            String contentDisp= part.getHeader("content-disposition");
            String [] items=contentDisp.split(";");
            for( String s : items){
                if(s.trim().startsWith("filname")){
                return s.substring(s.indexOf("=")+ 2, s.length() -1 );
                }
            }
            return "";  
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
