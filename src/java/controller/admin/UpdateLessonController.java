/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.CourseDAO;
import dao.ModuleDAO;
import dao.VideoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Lesson;
import model.Video;
import model.Module;

/**
 *
 * @author Admin
 */
@WebServlet("/admin/AdminUpdateLessonController")
public class UpdateLessonController extends HttpServlet {

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
            out.println("<title>Servlet UpdateLesson</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateLesson at " + request.getContextPath() + "</h1>");
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
        String lessonid = request.getParameter("lessonid");
        if (lessonid != null) {
            try {
                CourseDAO coudao = new CourseDAO();
                VideoDAO viddao = new VideoDAO();
                ModuleDAO moldao = new ModuleDAO();
                int lessid = Integer.parseInt(lessonid);
                Lesson less = coudao.getLessonByid(lessid);
                Video video = viddao.getVideoByVideoid(less.getVideoid());
                Module module = moldao.GetModuleById(less.getModuleid());
                request.setAttribute("lesson", less);
                request.setAttribute("video", video);
                request.setAttribute("module", module);
                request.getRequestDispatcher("UpdateLesson.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }

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
        String number = request.getParameter("numbersubheading");
        String lessonid = request.getParameter("lessonid");
        String contentid = request.getParameter("contentid");
        String lessonname = request.getParameter("lessonname");
        String subject = request.getParameter("subjectid");
        String classes = request.getParameter("classid");
        String chapter = request.getParameter("chapter");
        String videourl = request.getParameter("videourl");
        String videotitle = request.getParameter("videotitle");
        String type = request.getParameter("type");
        HttpSession session = request.getSession();
        Lesson newLesson = null;
        if (lessonid != null && !lessonid.isEmpty()
                && lessonname != null && !lessonname.isEmpty()
                && subject != null && !subject.isEmpty()
                && classes != null && !classes.isEmpty()
                && chapter != null && !chapter.isEmpty()
                && videourl != null && !videourl.isEmpty()
                && videotitle != null && !videotitle.isEmpty()) {
            try {
                CourseDAO coudao = new CourseDAO();
                VideoDAO viddao = new VideoDAO();
                ModuleDAO moldao = new ModuleDAO();
                int lessid = Integer.parseInt(lessonid);
                int subjectid = Integer.parseInt(subject);
                int classid = Integer.parseInt(classes);
                Module module = moldao.getModuleByName(chapter, classid, subjectid);
                Lesson oldless = coudao.getLessonByid(lessid);
                Video oldvideo = viddao.getVideoByVideoid(oldless.getVideoid());
                Video newvideo = new Video(oldvideo.getId(), videourl, videotitle, subjectid, classid);
                if (type.equalsIgnoreCase("Premium")) {
                    newLesson = new Lesson(oldless.getId(), lessonname, module.getId(), true, oldless.getContentid(), newvideo.getId(), true);
                } else {
                    newLesson = new Lesson(oldless.getId(), lessonname, module.getId(), true, oldless.getContentid(), newvideo.getId(), false);
                }
                if (number != null && !number.isEmpty()) {
                    int nums = Integer.parseInt(number);
                    request.setAttribute("contentid", contentid);
                    request.setAttribute("number", nums);
                    session.setAttribute("lesson", newLesson);
                    session.setAttribute("video", newvideo);
                    request.getRequestDispatcher("UpdateBodyContent.jsp").forward(request, response);
                } else {
                    viddao.updateVideo(newvideo);
                    coudao.updateLesson(newLesson);
                    response.sendRedirect(request.getContextPath() + "/admin/AdminListLesson");
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().write("An error occurred: " + e.getMessage());
            }
        } else {
            request.getRequestDispatcher("listUser.jsp").forward(request, response);
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
