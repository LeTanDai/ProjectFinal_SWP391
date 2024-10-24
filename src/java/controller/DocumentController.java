/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ClassDAO;
import dao.DocumentDAO;
import dao.ExamDAO;
import dao.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Classes;
import model.Document;
import model.Exam;
import model.Subjects;

/**
 *
 * @author PC
 */
@WebServlet(name = "DocumentController", urlPatterns = {"/DocumentController"})
public class DocumentController extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        //b1 : get data from ProductDAO
        DocumentDAO documentDAO = new DocumentDAO();
        ExamDAO exDAO = new ExamDAO();
        List<Document> list = documentDAO.getAllDocument();
        List<Exam> listE = exDAO.getAllExam();

        SubjectDAO subjectDAO = new SubjectDAO();
        List<Subjects> subjects = subjectDAO.getAllSubject();

        Map<Integer, String> subjectMap = new HashMap<>();
        for (Subjects subject : subjects) {
            subjectMap.put(subject.getId(), subject.getName()); // Giả sử bạn có getId() và getName()
        }

        ClassDAO classDAO = new ClassDAO(); // Giả sử bạn có ClassDAO
        List<Classes> classes = classDAO.getAllClass(); // Lấy tất cả lớp học

        
        Map<Integer, String> classMap = new HashMap<>();
        for (Classes cls : classes) {
            classMap.put(cls.getId(), cls.getName()); // Lưu id và tên lớp
        }
        //b2 : set data to jsp
        request.setAttribute("classMap", classMap);
        request.setAttribute("subjectMap", subjectMap);
        request.setAttribute("listDoc", list);
        request.setAttribute("listE", listE);
        request.getRequestDispatcher("document.jsp").forward(request, response);
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
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(DocumentController.class.getName()).log(Level.SEVERE, null, ex);
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
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(DocumentController.class.getName()).log(Level.SEVERE, null, ex);
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
