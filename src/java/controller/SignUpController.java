/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author lethe
 */
@WebServlet(name="SignUpController", urlPatterns={"/SignUpController"})
public class SignUpController extends HttpServlet {

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
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String re_pass = request.getParameter("repassword");

        UserDAO uDAO = new UserDAO();

        String emailRegex = ".*[a-z0-9A-Z]@+.*[a-zA-Z]+\\.+.*[a-zA-z]";
        String phoneRegex = "^\\d{10}$";

        if (!email.matches(emailRegex)) {
            request.setAttribute("error", "Invalid email format");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (uDAO.checkEmail(email) != null) {
            request.setAttribute("error", "Email already exist");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (uDAO.checkPhone(phone) != null) {
            request.setAttribute("error", "Phone number already exist");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (phone.matches(".*[a-zA-Z].*")) {
            request.setAttribute("error", "Phone number must be number");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (phone.matches(".*[a-zA-Z].*")) {
            request.setAttribute("error", "Phone number must be number");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (!phone.matches(phoneRegex)) {
            request.setAttribute("error", "Phone number must be 10 digits");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (password.length() < 6) {
            request.setAttribute("error", "Password must be at least 6 characters");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (!password.equals(re_pass)) {
            request.setAttribute("error", "Password mismatch");
            request.setAttribute("", uDAO);
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else {

            User user = uDAO.checkAccountExist(username);
            if (user == null) {
                uDAO.signUp(username, password, email, phone);
                response.sendRedirect("index.jsp");
            }
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
