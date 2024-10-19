package controller;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import model.User;

@WebServlet("/premiumUpgrade")
public class PremiumUpgradeServlet extends HttpServlet {
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account"); // Lấy thông tin người dùng từ session

        if (user != null) {
            // Cập nhật trạng thái người dùng thành premium
            user.setIsPremium(true);
            userDAO.updateUser(user); // Cập nhật thông tin người dùng trong cơ sở dữ liệu
            
            response.sendRedirect("paymentNotification.jsp"); // Chuyển hướng tới trang thông báo thanh toán thành công
        } else {
            response.sendRedirect("login.jsp"); // Nếu không có người dùng trong session, chuyển hướng tới trang đăng nhập
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Không sử dụng phương thức POST
        doGet(request, response);
    }
}
