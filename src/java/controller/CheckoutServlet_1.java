/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

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
 * @author trong
 */
@WebServlet(name = "CheckoutServlet", urlPatterns = {"/checkout"})
public class CheckoutServlet_1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession(false); // Không tạo session mới nếu không có
        if (session != null) {
            User user = (User) session.getAttribute("account");
            if (user != null) {
                // Chuyển thông tin người dùng đến JSP checkout
                request.setAttribute("userInfo", user);
                request.getRequestDispatcher("checkout.jsp").forward(request, response);
            } else {
                // Nếu không có thông tin người dùng, chuyển đến trang đăng nhập
                response.sendRedirect("login.jsp");
            }
        } else {
            // Nếu không có session, chuyển đến trang đăng nhập
            response.sendRedirect("login.jsp");
        }
    }
}

