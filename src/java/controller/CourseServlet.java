/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CourseDAO;
import model.Lesson;
import model.Video;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 *
 * @author Admin
 */
@WebServlet("/CourseServlet")
public class CourseServlet extends HttpServlet {

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
            out.println("<title>Servlet CourseDAO</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CourseDAO at " + request.getContextPath() + "</h1>");
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
        String grade = request.getParameter("class");
        HttpSession session = request.getSession();
        if (grade != null) {
            session.setAttribute("Grade", grade);
            request.getRequestDispatcher("course.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        String[] subject = {"Math", "Physics", "Chemistry"};
        String[] grade = {"10", "11", "12"};
        String graderq = (String) session.getAttribute("Grade");
        String subjectrq = request.getParameter("subject");
        int gradeid = 0, subjectid = 0;
        for (int i = 0; i < subject.length; i++) {
            if (subjectrq.equalsIgnoreCase(subject[i])) {
                subjectid = (i + 1);
                break;
            }
        }
        for (int i = 0; i < grade.length; i++) {
            if (graderq.equalsIgnoreCase(grade[i])) {
                gradeid = (i + 1);
                break;
            }
        }
        try {
            CourseDAO dao = new CourseDAO();
            Map<model.Module, ArrayList<Map<Lesson, Video>>> map = new LinkedHashMap<>();
            map = dao.getAllModuleBySubjectid(subjectid, gradeid);
            request.setAttribute("Map", map);
            request.getRequestDispatcher("courselist.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
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
