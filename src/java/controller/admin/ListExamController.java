/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

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
import model.Exam;
import model.Subjects;

/**
 *
 * @author PC
 */
@WebServlet(name = "ListExamController", urlPatterns = {"/admin/ListExamController"})
public class ListExamController extends HttpServlet {

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

        try ( PrintWriter out = response.getWriter()) {
            // Bước 1: Lấy dữ liệu từ ExamDAO (sẽ dùng cho phân trang)
            ExamDAO examDAO = new ExamDAO();
            List<Exam> allExams = examDAO.getAllExam();  // Lấy toàn bộ danh sách kỳ thi

            // Bước 2: Lấy dữ liệu từ ClassDAO và SubjectDAO
            ClassDAO classDAO = new ClassDAO();
            List<Classes> classList = classDAO.getAllClass();  // Lấy danh sách lớp

            SubjectDAO subjectDAO = new SubjectDAO();
            List<Subjects> subjectList = subjectDAO.getAllSubject();  // Lấy danh sách môn học

            // Bước 3: Tạo Map cho classId và subjectId
            Map<Integer, String> classMap = new HashMap<>();
            for (Classes classS : classList) {
                classMap.put(classS.getId(), classS.getName());
            }

            Map<Integer, String> subjectMap = new HashMap<>();
            for (Subjects subject : subjectList) {
                subjectMap.put(subject.getId(), subject.getName());
            }

            // Bước 4: Xử lý phân trang
            int currentPage = 1;
            int itemsPerPage = 6;  // Số phần tử mặc định trên mỗi trang
            String action = request.getParameter("action");
            String currentPageParam = request.getParameter("currentPage");
            String itemsPerPageParam = request.getParameter("itemsPerPage");

            // Nếu tham số có giá trị, parse chúng
            if (currentPageParam != null) {
                currentPage = Integer.parseInt(currentPageParam);
            }
            if (itemsPerPageParam != null) {
                itemsPerPage = Integer.parseInt(itemsPerPageParam);
            }

            // Điều chỉnh trang hiện tại nếu có hành động 'previous' hoặc 'next'
            if ("previous".equals(action) && currentPage > 1) {
                currentPage--;
            } else if ("next".equals(action)) {
                currentPage++;
            }

            // Tính toán tổng số trang
            int totalPages = (int) Math.ceil((double) allExams.size() / itemsPerPage);

            // Đảm bảo currentPage không vượt quá totalPages
            if (currentPage > totalPages) {
                currentPage = totalPages;
            }

            // Tính toán chỉ số bắt đầu và kết thúc cho trang hiện tại
            int startIndex = (currentPage - 1) * itemsPerPage;
            int endIndex = Math.min(startIndex + itemsPerPage, allExams.size());

            // Lấy danh sách kỳ thi cho trang hiện tại
            List<Exam> examsForPage = allExams.subList(startIndex, endIndex);

            // Bước 5: Đặt dữ liệu vào JSP
            request.setAttribute("listE", examsForPage);  // Truyền danh sách kỳ thi vào JSP
            request.setAttribute("classMap", classMap);  // Truyền bản đồ lớp vào JSP
            request.setAttribute("subjectMap", subjectMap);  // Truyền bản đồ môn học vào JSP
            request.setAttribute("currentPage", currentPage);  // Truyền trang hiện tại
            request.setAttribute("totalPages", totalPages);  // Truyền tổng số trang
            request.setAttribute("itemsPerPage", itemsPerPage);  // Truyền số phần tử trên mỗi trang

            // Bước 6: Chuyển tiếp đến trang JSP
            request.getRequestDispatcher("listExam.jsp").forward(request, response);
        }
    }

// Chuyển tiếp request vào processRequest cho cả GET và POST
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ListExamController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ListExamController.class.getName()).log(Level.SEVERE, null, ex);
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
