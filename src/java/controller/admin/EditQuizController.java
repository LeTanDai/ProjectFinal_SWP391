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
import model.FlashCard;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TanDai
 */
@WebServlet(name = "EditQuizController", urlPatterns = {"/admin/EditQuizController"})
public class EditQuizController extends HttpServlet {

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
            out.println("<title>Servlet EditQuizController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditQuizController at " + request.getContextPath() + "</h1>");
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
        String idParam = request.getParameter("id");
        int flashCardId;
        FlashCardDAO f = new FlashCardDAO();
        try {
            flashCardId = Integer.parseInt(idParam);
            FlashCard flashCard = f.getFlashCardById(flashCardId);
            request.setAttribute("flashCard", flashCard);
            request.getRequestDispatcher("editQuiz.jsp").forward(request, response);
        } catch (SQLException e) {
            System.out.println(e);
        } catch (NumberFormatException e) {
            System.out.println(e);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int flashCardId;
        FlashCard flashCard = new FlashCard();

        try {
            flashCardId = Integer.parseInt(request.getParameter("id"));
            String questionName = request.getParameter("quizName");
            String option1 = request.getParameter("option1");
            String option2 = request.getParameter("option2");
            String option3 = request.getParameter("option3");
            String option4 = request.getParameter("option4");
            String true_answer = request.getParameter("true_answer");

            String className = request.getParameter("className");
            String subjectName = request.getParameter("subjectName");
            String moduleName = request.getParameter("moduleName");

            flashCard.setFlashCardId(flashCardId);
            flashCard.setQuestionName(questionName);
            flashCard.setOption1(option1);
            flashCard.setOption2(option2);
            flashCard.setOption3(option3);
            flashCard.setOption4(option4);
            flashCard.setTrue_answer(true_answer);

            FlashCardDAO flashCardDAO = new FlashCardDAO();

            flashCardDAO.updateFlashCard(flashCard);

            request.setAttribute("mess", "Câu hỏi được cập nhật thành công");

            request.getRequestDispatcher("ListQuizController").forward(request, response);
        } catch (SQLException e) {
            System.out.println(e);
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
