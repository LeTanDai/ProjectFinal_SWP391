/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.FlashCardDAO;
import dao.ModuleDAO;
import dao.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.FlashCard;

/**
 *
 * @author TanDai
 */
@WebServlet(name = "AddQuizController", urlPatterns = {"/admin/AddQuizController"})
public class AddQuizController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddQuizController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddQuizController at " + request.getContextPath() + "</h1>");
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
        try {
            String quizName = request.getParameter("quizName");
            String option1 = request.getParameter("option1");
            String option2 = request.getParameter("option2");
            String option3 = request.getParameter("option3");
            String option4 = request.getParameter("option4");
            String trueAnswer = request.getParameter("true_answer");
            String className = request.getParameter("className");
            String subjectName = request.getParameter("subjectName");
            String moduleName = request.getParameter("module");
            
            ClassDAO classDAO = new ClassDAO();
            SubjectDAO subjectDAO = new SubjectDAO();
            ModuleDAO moduleDAO = new ModuleDAO();
            
            int classid = classDAO.getClassIdByName(className);
            int subjectid = subjectDAO.getSubjectIdByName(subjectName);
            int moduleid = moduleDAO.getModuleIdByName(moduleName, subjectid, classid);
            
            FlashCard flashCard = new FlashCard();
            flashCard.setQuestionName(quizName);
            flashCard.setOption1(option1);
            flashCard.setOption2(option2);
            flashCard.setOption3(option3);
            flashCard.setOption4(option4);
            flashCard.setTrue_answer(trueAnswer);
            
            FlashCardDAO f = new FlashCardDAO();
            try {
                f.addFlashCardToExistingModule(flashCard, moduleid);
                request.getRequestDispatcher("ListQuizController").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(AddQuizController.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(AddQuizController.class.getName()).log(Level.SEVERE, null, ex);
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
