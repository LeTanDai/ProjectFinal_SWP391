/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.DocumentDAO;
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
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import model.Classes;
import model.Document;
import model.Subjects;
import model.Video;

/**
 *
 * @author Admin
 */
@WebServlet("/admin/AdminListSearchDocument")
public class ListSearchDocumentController extends HttpServlet {

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
            out.println("<title>Servlet ListSearchDocumentController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListSearchDocumentController at " + request.getContextPath() + "</h1>");
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
        String search = null;
        if ( request.getAttribute("search") != null ) {
            search = (String) request.getAttribute("search");
        } else {
            search = request.getParameter("search");
        }
        if (search == null) {
            request.getRequestDispatcher("AdminListDocument").forward(request, response);
        }
        int currentPage = 0;
        int totalItems = 0;
        int totalPage = 0;
        int startItems = 0;
        int endItems = 0;
        try {
            DocumentDAO docdao = new DocumentDAO();
            SubjectDAO subdao = new SubjectDAO();
            ClassDAO cldao = new ClassDAO();
            ArrayList<Document> doclist = docdao.getAllDocumentBySearch(search);
            Map<Document, Map<Subjects, Classes>> map = new LinkedHashMap<>();
            Map<Subjects, Classes> mapclsj = new LinkedHashMap<>();
            for (Document doc : doclist) {
                mapclsj = new LinkedHashMap<>();
                Subjects sub = subdao.getSubjectById(doc.getSubject_id());
                Classes class_ = cldao.getClassById(doc.getClass_id());
                mapclsj.put(sub, class_);
                map.put(doc, mapclsj);
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
            Map<Document, Map<Subjects, Classes>> submap = new LinkedHashMap<>();
            startItems = (currentPage - 1) * 3;
            endItems = Math.min(startItems + 3, totalItems);
            int currentIndex = 0;
            for (Map.Entry<Document, Map<Subjects, Classes>> entry : map.entrySet()) {
                if (currentIndex >= startItems && currentIndex <= endItems) {
                    submap.put(entry.getKey(), entry.getValue());
                }
                currentIndex++;
                if (currentIndex >= endItems) {
                    break;
                }
            }
            request.setAttribute("submapdocument", submap);
            request.setAttribute("currentPage", currentPage);
            request.setAttribute("totalPage", totalPage);
            request.setAttribute("search", search);
            request.getRequestDispatcher("ListSearchDocument.jsp").forward(request, response);
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
            DocumentDAO docdao = new DocumentDAO();
            String operate = request.getParameter("operatedocument");
            String docid = request.getParameter("documentid");
            if (operate != null) {
                if (operate.equals("delete")) {
                    int doccid = Integer.parseInt(docid);
                    docdao.deleteDocument(doccid);
                    String search = request.getParameter("search");
                    request.setAttribute("search", search);
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
