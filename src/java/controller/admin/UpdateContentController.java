/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ContentDAO;
import dao.CourseDAO;
import dao.VideoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Classes;
import model.Lesson;
import model.Lesson_Content;
import model.Video;

/**
 *
 * @author Admin
 */
@WebServlet("/admin/AdminUpdateContentLessonController")
public class UpdateContentController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateContentController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateContentController at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Lesson less = (Lesson) session.getAttribute("lesson");
        Video video = (Video) session.getAttribute("video");
        String[] docNames = request.getParameterValues("docName[]");
        String[] descriptions = request.getParameterValues("description[]");
        String subheading = null;
        String body = null;
        String title = less.getName();
        int i = 0;
        String contenthtml = null;
        Video vid = null;
        Lesson les = null;
        Lesson_Content lescont = null;
        Classes classess = null;
        if (title != null) {
            contenthtml = "<h3 style=\"text-align:center;\"><b style=\"color:#0070c0;\">" + "Lý thuyết " + title + "</b></h3>";
        }
        if (docNames != null && descriptions != null) {
            while (i < docNames.length && i < descriptions.length) {
                subheading = "<p><strong><span style=\"color: #00b050;\">" + docNames[i] + "</span></strong></p>";
                body = "<p><span>" + descriptions[i] + "</span></p>";
                if (contenthtml == null) {
                    contenthtml = subheading + body;
                } else {
                    contenthtml += (subheading + body);
                }
                i++;
            }
        }
        try {
            CourseDAO coudao = new CourseDAO();
            VideoDAO viddao = new VideoDAO();
            ContentDAO contdao = new ContentDAO();
            Lesson_Content newcontent = new Lesson_Content(less.getContentid(), contenthtml, less.getName());
            contdao.updateContent(newcontent);
            viddao.updateVideo(video);
            coudao.updateLesson(less);
            response.sendRedirect(request.getContextPath() + "/admin/AdminListLesson");
        } catch ( Exception e ) {
            e.printStackTrace();
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
