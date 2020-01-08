package org.register.servelet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.register.DB.AssociationDB;
import org.register.Association;

@WebServlet(name = "AjoutAssociation", urlPatterns = {"/AjoutAssociation"})
public class AjoutAssociation extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String username=request.getParameter("username");
        String nom_association=request.getParameter("nom");
        String reçu=request.getParameter("reçu");
        String adresse =request.getParameter("adresse");
        String ville=request.getParameter("ville");
        String compte=request.getParameter("compte");
        String mdp=request.getParameter("mdp");
        Association association=new Association();        
        association.setUsername(username);
        association.setNom_association(nom_association);
        
        association.setAdresse(adresse);
        association.setVille(ville);
        association.setCompte(compte);
        association.setMdp(mdp);
        AssociationDB.save(association);
        out.println("Association enregistrer avec succés");
        request.getRequestDispatcher("registerasso.jsp").include(request, response);
        
        
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
