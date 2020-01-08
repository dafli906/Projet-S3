package org.register.servelet;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "signindon", urlPatterns = {"/signindon"})
public class signindon extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username=request.getParameter("username");
        String mdp=request.getParameter("mdp");
        try{
            if(username!=null){
                Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
                Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/DB","APP","azerty");
                String Query="select * from DONNATEUR where USERNAME=? and MDP=?";
                PreparedStatement psm=conn.prepareStatement(Query);
                psm.setString(1,username);
                psm.setString(2,mdp);
                ResultSet rs=psm.executeQuery();
                if(rs.next()){
                    response.sendRedirect("donnateur.jsp");
                }
                else
                {
                    
                    response.sendRedirect("signin.jsp");
                                                           
                }
                
            }
        }catch(Exception ex){}
        
        
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
