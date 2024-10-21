/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import DAO.ContentDAO;
import DAO.VideoDAO;
import Model.Lesson_Content;
import Model.Video;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet("/admin/VideoServlet")
public class ListVideoController extends HttpServlet {

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
            out.println("<title>Servlet Admin_ListVideo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Admin_ListVideo at " + request.getContextPath() + "</h1>");
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
        String videoid = request.getParameter("video");
        String contentid = request.getParameter("content");
        VideoDAO viddao = new VideoDAO();
        ContentDAO contdao = new ContentDAO();
        if ( videoid != null && contentid != null ) {
            try {
                int contid = Integer.parseInt(contentid);
                int vidid = Integer.parseInt(videoid);
                Video video = viddao.getVideoByVideoid(vidid);
                Lesson_Content lesson_content = contdao.getContentByContentid(contid);
                request.setAttribute("videotitle",video.getTitle());
                request.setAttribute("videourl", video.getUrl());
                request.setAttribute("content_title", lesson_content.getContent_title());
                request.setAttribute("content", lesson_content.getContent());
                request.getRequestDispatcher("/video.jsp").forward(request, response);
            } catch ( NumberFormatException e ) {
                e.printStackTrace();
            }
        } else {
            request.getRequestDispatcher("courselist.jsp").forward(request, response);
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
