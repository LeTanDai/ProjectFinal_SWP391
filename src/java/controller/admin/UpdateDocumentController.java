/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.DocumentDAO;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Classes;
import model.Document;

/**
 *
 * @author Admin
 */
@WebServlet("/admin/AdminUpdateDocumentController")
public class UpdateDocumentController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateDocumentController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateDocumentController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String documentid = request.getParameter("docid");
        if (documentid != null) {
            try {
                DocumentDAO docdao = new DocumentDAO();
                int docid = Integer.parseInt(documentid);
                Document doc = docdao.getDocumentById(docid);
                request.setAttribute("document", doc);
                request.getRequestDispatcher("UpdateDocument.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
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
        String documentid = request.getParameter("documentid");
        String documentname = request.getParameter("documentname");
        String subject = request.getParameter("subjectid");
        String classes = request.getParameter("classid");
        String imageurl = request.getParameter("imageurl");
        String bookurl = request.getParameter("bookurl");
        if (documentid != null && documentname != null && subject != null && classes != null && imageurl != null && bookurl != null) {
            try {
                ClassDAO classdao = new ClassDAO();
                int docid = Integer.parseInt(documentid);
                Classes clas = classdao.getClassByName("Lớp " + Integer.parseInt(classes));
                int subjectid = Integer.parseInt(subject);
                Document doc = new Document(docid, bookurl, documentname, imageurl, subjectid, clas.getId());
                DocumentDAO docdao = new DocumentDAO();
                docdao.updateDocument(doc);
                response.sendRedirect(request.getContextPath() + "/admin/AdminListDocument");
            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().write("An error occurred: " + e.getMessage());
            }
        }
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
