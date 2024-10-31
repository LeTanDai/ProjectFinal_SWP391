/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.DocumentDAO;
import dao.UserDAO;
import dao.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Classes;
import model.Document;
import model.User;
import model.Subjects;

/**
 *
 * @author dinhb
 */
@WebServlet(name = "ListUserController", urlPatterns = {"/admin/AdminListUser"})
public class ListUserController extends HttpServlet {

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
            out.println("<title>Servlet Admin_ListDocument</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Admin_ListDocument at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

// Chuyển tiếp request vào processRequest cho cả GET và POST
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String currentPage_get = request.getParameter("currentPage");
        int currentPage = 0;
        int totalItems = 0;
        int totalPage = 0;
        int startItems = 0;
        int endItems = 0;

        try {
            UserDAO userDao = new UserDAO(); // Khởi tạo UserDAO
            List<User> userList = userDao.getAllUser(); // Lấy tất cả người dùng
            totalItems = userList.size();

            if (action != null && currentPage_get != null) {
                currentPage = Integer.parseInt(currentPage_get);
                if (action.equals("previous")) {
                    if (currentPage > 1) {
                        currentPage--;
                    }
                } else if (action.equals("next")) {
                    totalPage = (int) Math.ceil((double) totalItems / 3);
                    if (currentPage < totalPage) {
                        currentPage++;
                    } else {
                        currentPage = totalPage;
                    }
                }
            } else {
                currentPage = 1;
            }

            // Phân trang dữ liệu
            ArrayList<User> subUserList = new ArrayList<>();
            startItems = (currentPage - 1) * 4;
            endItems = Math.min(startItems + 4, totalItems);
            for (int i = startItems; i < endItems; i++) {
                subUserList.add(userList.get(i));
            }

            // Gửi dữ liệu đến JSP
            request.setAttribute("subUserList", subUserList);
            request.setAttribute("currentPage", currentPage);
            request.setAttribute("totalPage", (int) Math.ceil((double) totalItems / 3));
            request.getRequestDispatcher("listUser.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("An error occurred: " + e.getMessage());
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
        String action = request.getParameter("action");

        if ("updateRole".equals(action)) {
            int userId = Integer.parseInt(request.getParameter("userId"));
            String role = request.getParameter("role");

            try {
                UserDAO userDao = new UserDAO();
                userDao.updateUserRole(userId, role);
                response.sendRedirect(request.getContextPath() + "/admin/AdminListUser");
            } catch (SQLException e) {
                e.printStackTrace(); // Handle errors appropriately
                request.setAttribute("errorMessage", "Error updating user role.");
                request.getRequestDispatcher("errorPage.jsp").forward(request, response);
            }
        } else {
            processRequest(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
