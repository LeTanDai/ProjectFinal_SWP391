/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author lethe
 */
public class LoginController_ extends HttpServlet {
   
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        
        
        
        UserDAO loginDAO = new UserDAO();
        User u = loginDAO.checkLogin(username, password);
        if(u == null){
            request.setAttribute("Error", "Wrong username or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("account", u);
            //Tao cookie
            Cookie cuser = new Cookie("cuser", username);
            Cookie cpass = new Cookie("cpass",password);
            Cookie crem = new Cookie("crem",remember);
            if(remember != null){
                cuser.setMaxAge(60*60*24*90);
                cpass.setMaxAge(60*60*24*90);
                crem.setMaxAge(60*60*24*90);
            }else{
                cuser.setMaxAge(0);
                cpass.setMaxAge(0);
                crem.setMaxAge(0);
            }
            response.addCookie(cuser);
            response.addCookie(cpass);
            response.addCookie(crem);
            if (u.isIsAdmin() == true) {
                response.sendRedirect("admin/listUser.jsp");
            } else {
            response.sendRedirect("index.jsp");
            }
        }
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