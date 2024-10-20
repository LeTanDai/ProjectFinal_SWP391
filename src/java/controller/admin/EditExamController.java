/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.ExamDAO;
import dao.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Classes;
import model.Exam;
import model.Subjects;

/**
 *
 * @author PC
 */
public class EditExamController extends HttpServlet {

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
            out.println("<title>Servlet EditExamController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditExamController at " + request.getContextPath() + "</h1>");
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
        try {
            // Retrieve the exam ID from the request
            String idParam = request.getParameter("id");
            if (idParam == null || idParam.isEmpty()) {
                throw new IllegalArgumentException("Exam ID is missing.");
            }

            int examId = Integer.parseInt(idParam);
            ExamDAO examDAO = new ExamDAO();
            ClassDAO clDAO = new ClassDAO();
            SubjectDAO sjDAO = new SubjectDAO();

            // Fetch the exam details
            Exam ex = examDAO.getExamById(examId);
            if (ex == null) {
                throw new SQLException("Exam not found for ID: " + examId);
            }

            // Fetch associated subject and class
            Subjects sj = sjDAO.getSubjectById(ex.getSubject_id());
            Classes cl = clDAO.getClassById(ex.getClass_id());

            // Set attributes for the JSP
            request.setAttribute("subjectName", sj.getName());
            request.setAttribute("className", cl.getName());
            request.setAttribute("exam", ex);

            // Forward to the JSP page
            request.getRequestDispatcher("admin/editExam.jsp").forward(request, response);
        } catch (NumberFormatException | SQLException e) {
            Logger.getLogger(EditExamController.class.getName()).log(Level.SEVERE, "Invalid exam ID format.", e);
            request.setAttribute("errorMessage", "Invalid exam ID format.");
            request.getRequestDispatcher("admin/error.jsp").forward(request, response);
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
        try {
            String examId = request.getParameter("id");
            String examName = request.getParameter("examName");
            String examUrl = request.getParameter("examUrl");
            String className = request.getParameter("className");
            String subjectName = request.getParameter("subjectName");
            ClassDAO clDAO = new ClassDAO();
            SubjectDAO sjDAO = new SubjectDAO();
            ExamDAO exDAO = new ExamDAO();
            Classes c = clDAO.getClassByName(className);
            Subjects sj = sjDAO.getSubjectByName(subjectName);
            // Tạo đối tượng Exam mới
            Exam exam = new Exam();
            exam.setExamId(Integer.parseInt(examId)); // Chuyển đổi id sang kiểu số
            exam.setExamName(examName);
            exam.setExamUrl(examUrl);
            exam.setClass_id(c.getId());
            exam.setSubject_id(sj.getId());
            
            exDAO.updateExam(exam);
            request.getRequestDispatcher("ListExamController").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EditExamController.class.getName()).log(Level.SEVERE, null, ex);
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
