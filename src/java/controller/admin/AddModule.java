/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.ModuleDAO;
import dao.SubjectDAO;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Classes;
import model.Subjects;

/**
 *
 * @author Admin
 */
@WebServlet("/admin/AdminAddModule")
public class AddModule extends HttpServlet {

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
            out.println("<title>Servlet AddModule</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddModule at " + request.getContextPath() + "</h1>");
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
        String subjectid = request.getParameter("subjectid");
        String classid = request.getParameter("classid");
        Subjects subject = null;
        if (subjectid != null && classid != null) {
            try {
                int subid = Integer.parseInt(subjectid);
                int clid = Integer.parseInt(classid);
                SubjectDAO subdao = new SubjectDAO();
                ClassDAO cldao = new ClassDAO();
                subject = subdao.getSubjectById(subid);
                Classes classes = cldao.getClassById(clid);
                request.setAttribute("subject", subject);
                request.setAttribute("classes", classes);
                request.getRequestDispatcher("addModule.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().write("An error occurred: " + e.getMessage());
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
        String modulename = request.getParameter("modulename");
        String moduledescription = request.getParameter("moduledescription");
        String subjectid = request.getParameter("subject");
        String classes = request.getParameter("classes");
        if (modulename != null && moduledescription != null && subjectid != null && classes != null) {
            try {
                int subid = Integer.parseInt(subjectid);
                int classid = Integer.parseInt(classes);
                ModuleDAO moddao = new ModuleDAO();
                ArrayList<model.Module> listmod = (ArrayList<model.Module>) moddao.getAllModulesWithSubject(subid, classid);
                for (model.Module module : listmod) {
                    if (module.getName().equalsIgnoreCase(modulename)) {
                        response.sendRedirect(request.getContextPath() + "/admin/AdminListLesson");
                    }
                }
                model.Module newmodule = new model.Module(0, modulename, moduledescription, subid, classid);
                moddao.addModule(newmodule);
                response.sendRedirect(request.getContextPath() + "/admin/AdminListLesson");
            } catch (Exception e) {
                e.printStackTrace();
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
