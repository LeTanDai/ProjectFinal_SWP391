/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.ContentDAO;
import dao.CourseDAO;
import dao.VideoDAO;
import dao.SubjectDAO;
import model.Classes;
import model.Lesson_Content;
import model.Subjects;
import model.Video;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 *
 * @author Admin
 */
@WebServlet("/admin/AdminListDocument")
public class ListDocumentController extends HttpServlet {

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
            out.println("<title>Servlet Admin_ListDocument</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Admin_ListDocument at " + request.getContextPath() + "</h1>");
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
        String action = request.getParameter("action");
        String currentPage_get = request.getParameter("currentPage");
        int currentPage = 0;
        int totalItems = 0;
        int totalPage = 0;
        int startItems = 0;
        int endItems = 0;
        HttpSession session = request.getSession();
        try {
            VideoDAO viddao = new VideoDAO();
            ClassDAO classdao = new ClassDAO();
            SubjectDAO subdao = new SubjectDAO();
            CourseDAO coudao = new CourseDAO();
            ContentDAO condao = new ContentDAO();
            ArrayList<Video> listvid = new ArrayList<>();
            Map<Map<Video, Lesson_Content>, Map<Subjects, Classes>> map = (Map<Map<Video, Lesson_Content>, Map<Subjects, Classes>>) session.getAttribute("mapvideo");
            if (map == null) {
                listvid = viddao.getAllVideo();
                map = new LinkedHashMap<>();
                for (Video vid : listvid) {
                    Map<Video, Lesson_Content> maplc = new LinkedHashMap<>();
                    Map<Subjects, Classes> mapsc = new LinkedHashMap<>();
                    Subjects sub = subdao.getSubjectById(vid.getSubjectid());
                    Classes c = classdao.getClassById(vid.getClassid());
                    Lesson_Content lc = condao.getContentByContentid(coudao.getLessonByVideoid(vid.getId()).getContentid());
                    mapsc.put(sub, c);
                    maplc.put(vid, lc);
                    map.put(maplc, mapsc);
                }
            }
            totalItems = map.size();
            if (action != null && currentPage_get != null) {
                currentPage = Integer.parseInt(currentPage_get);
                if (action.equals("previous")) {
                    if (currentPage == 1) {
                        currentPage = 1;
                    } else if (currentPage > 1) {
                        currentPage--;
                    }
                } else if (action.equals("next")) {
                    totalPage = (int) Math.ceil((double) totalItems / 6);
                    if (currentPage < totalPage) {
                        currentPage++;
                    } else {
                        currentPage = totalPage;
                    }
                }
            } else {
                currentPage = 1;
            }
            Map<Map<Video, Lesson_Content>, Map<Subjects, Classes>> submap = new LinkedHashMap<>();
            startItems = (currentPage - 1) * 6;
            endItems = Math.min(startItems + 6, totalItems);
            int currentIndex = 0;
            for (Map.Entry<Map<Video, Lesson_Content>, Map<Subjects, Classes>> entry : map.entrySet()) {
                if (currentIndex >= startItems && currentIndex <= endItems) {
                    submap.put(entry.getKey(), entry.getValue());
                }
                currentIndex++;
                if (currentIndex >= endItems) {
                    break;
                }
            }
            request.setAttribute("submapvideo", submap);
            request.setAttribute("currentPage", currentPage);
            request.setAttribute("totalPage", totalPage);
            session.setAttribute("mapvideo", map);
            request.getRequestDispatcher("listDocument.jsp").forward(request, response);
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
        try {
            VideoDAO viddao = new VideoDAO();
            ClassDAO classdao = new ClassDAO();
            SubjectDAO subdao = new SubjectDAO();
            CourseDAO coudao = new CourseDAO();
            ContentDAO condao = new ContentDAO();
            HttpSession session = request.getSession();
            String searchrs = request.getParameter("search");
            String operate = request.getParameter("operatevideo");
            String videoid = request.getParameter("videoid");
            if (searchrs != null) {
                Map<Map<Video, Lesson_Content>, Map<Subjects, Classes>> map = new LinkedHashMap<>();
                ArrayList<Video> listvid = viddao.getListVideoBySearch(searchrs);
                for (Video vid : listvid) {
                    Map<Video, Lesson_Content> maplc = new LinkedHashMap<>();
                    Map<Subjects, Classes> mapsc = new LinkedHashMap<>();
                    Subjects sub = subdao.getSubjectById(vid.getSubjectid());
                    Classes c = classdao.getClassById(vid.getClassid());
                    Lesson_Content lc = condao.getContentByContentid(coudao.getLessonByVideoid(vid.getId()).getContentid());
                    mapsc.put(sub, c);
                    maplc.put(vid, lc);
                    map.put(maplc, mapsc);
                }
                session.setAttribute("mapvideo", map);
                doGet(request, response);
            } 
            if (operate != null) {
                if (operate.equals("delete")) {
                    int id = Integer.parseInt(videoid);
                    Map<Map<Video, Lesson_Content>, Map<Subjects, Classes>> map = (Map<Map<Video, Lesson_Content>, Map<Subjects, Classes>>) session.getAttribute("mapvideo");
                    viddao.DeleteVideobyVideoid(id);
                    if (map != null) {
                        Map<Map<Video, Lesson_Content>, Map<Subjects, Classes>> newmap = new LinkedHashMap<>();
                        for (Map.Entry<Map<Video, Lesson_Content>, Map<Subjects, Classes>> outerEntry : map.entrySet()) {
                            Map<Video, Lesson_Content> videoMap = outerEntry.getKey();
                            Map<Subjects, Classes> submap = outerEntry.getValue();
                            for (Map.Entry<Video, Lesson_Content> videoEntry : videoMap.entrySet()) {
                                Video video = videoEntry.getKey();
                                if (video.getId() != id) {
                                    newmap.put(videoMap, submap);
                                }
                            }
                        }
                        session.setAttribute("mapvideo", newmap);
                    }
                    doGet(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("An error occurred: " + e.getMessage());
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
