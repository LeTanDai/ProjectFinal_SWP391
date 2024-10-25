/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.ContentDAO;
import dao.CourseDAO;
import dao.ModuleDAO;
import dao.SubjectDAO;
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
@WebServlet("/admin/AdminAddLesson")
public class AddLessonController extends HttpServlet {

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
            out.println("<title>Servlet AddLessonController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddLessonController at " + request.getContextPath() + "</h1>");
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
        String number = request.getParameter("numbersubheading");
        String lessonname = request.getParameter("lessonname");
        String subject = request.getParameter("subjectid");
        String classes = request.getParameter("classid");
        String chapter = request.getParameter("chapter");
        String videourl = request.getParameter("videourl");
        String videotitle = request.getParameter("videotitle");
        HttpSession session = request.getSession();
        if (number != null && lessonname != null && subject != null && classes != null && chapter != null && videourl != null && videotitle != null) {
            try {
                int nums = Integer.parseInt(number);
                request.setAttribute("number", nums);
                session.setAttribute("lessonname", lessonname);
                session.setAttribute("subject", subject);
                session.setAttribute("classes", classes);
                session.setAttribute("chapter", chapter);
                session.setAttribute("videourl", videourl);
                session.setAttribute("videotitle", videotitle);
                request.getRequestDispatcher("addContent.jsp").forward(request, response);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        } else {
            request.getRequestDispatcher("listUser.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        String[] docNames = request.getParameterValues("docName[]");
        String[] descriptions = request.getParameterValues("description[]");
        String subheading = null;
        String body = null;
        String title = (String) session.getAttribute("lessonname");
        String subject = (String) session.getAttribute("subject");
        String classes = (String) session.getAttribute("classes");
        String chapter = (String) session.getAttribute("chapter");
        String videourl = (String) session.getAttribute("videourl");
        String videotitle = (String) session.getAttribute("videotitle");
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
            try {
                SubjectDAO subdao = new SubjectDAO();
                VideoDAO viddao = new VideoDAO();
                ClassDAO classdao = new ClassDAO();
                CourseDAO coudao = new CourseDAO();
                ModuleDAO moddao = new ModuleDAO();
                ContentDAO condao = new ContentDAO();
                vid = new Video(0, videourl, videotitle, subdao.getSubjectByName(subject).getId(), classdao.getClassByName("Lớp " + classes).getId());
                viddao.addVideo(vid);
                lescont = new Lesson_Content(0, contenthtml, title );
                condao.addContent(lescont);
                classess = classdao.getClassByName("Lớp " + classes);
                les = new Lesson(0, title, moddao.getModuleByName(chapter, classess.getId(),subdao.getSubjectByName(subject).getId()).getId()
                        , false,condao.getMaxContentId() ,viddao.getMaxVideoId(), false);
                coudao.addLesson(les);
                request.getRequestDispatcher("listUser.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().write("An error occurred: " + e.getMessage());
            }
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
