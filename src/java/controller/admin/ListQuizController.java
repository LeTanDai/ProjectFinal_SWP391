/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import dao.FlashCardDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.FlashCard;

/**
 *
 * @author TanDai
 */
@WebServlet(name="ListQuizController", urlPatterns={"/admin/ListQuizController"})
public class ListQuizController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            FlashCardDAO f = new FlashCardDAO();
            List<FlashCard>listF = f.getAllFlashcardsWithModules();
            
            int currentPage = 1;
            int itemsPerPage = 6;  
            String action = request.getParameter("action");
            String currentPageParam = request.getParameter("currentPage");
            String itemsPerPageParam = request.getParameter("itemsPerPage");


            if (currentPageParam != null) {
                currentPage = Integer.parseInt(currentPageParam);
            }
            if (itemsPerPageParam != null) {
                itemsPerPage = Integer.parseInt(itemsPerPageParam);
            }

            if ("previous".equals(action) && currentPage > 1) {
                currentPage--;
            } else if ("next".equals(action)) {
                currentPage++;
            }

            int totalPages = (int) Math.ceil((double) listF.size() / itemsPerPage);

            if (currentPage > totalPages) {
                currentPage = totalPages;
            }
            
            int startIndex = (currentPage - 1) * itemsPerPage;
            int endIndex = Math.min(startIndex + itemsPerPage, listF.size());

            List<FlashCard> flashCardForPage = listF.subList(startIndex, endIndex);
            
            request.setAttribute("listF",flashCardForPage);
            
            request.setAttribute("currentPage", currentPage);  
            request.setAttribute("totalPages", totalPages);  
            request.setAttribute("itemsPerPage", itemsPerPage);  
            
            request.getRequestDispatcher("listQuiz.jsp").forward(request, response);


        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
