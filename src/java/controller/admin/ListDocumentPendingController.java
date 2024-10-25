/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ClassDAO;
import dao.DocumentDAO;
import dao.DocumentPendingDAO;
import dao.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import model.Classes;
import model.Document;
import model.Subjects;

/**
 *
 * @author Admin
 */
@WebServlet("/admin/AdminListDocumentPending")
public class ListDocumentPendingController extends HttpServlet {

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
            out.println("<title>Servlet ListDocumentPendingController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListDocumentPendingController at " + request.getContextPath() + "</h1>");
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
        try {
            DocumentPendingDAO docpenddao = new DocumentPendingDAO();
            SubjectDAO subdao = new SubjectDAO();
            ClassDAO cldao = new ClassDAO();
            ArrayList<Document> doclist = docpenddao.getAllDocumentWithSubject();
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
            request.setAttribute("submapdocumentpending", submap);
            request.setAttribute("currentPage", currentPage);
            request.setAttribute("totalPage", totalPage);
            request.getRequestDispatcher("documentPending.jsp").forward(request, response);
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
            DocumentPendingDAO docpendingdao = new DocumentPendingDAO();
            DocumentDAO docdao = new DocumentDAO();
            String operate = request.getParameter("operatedocumentpending");
            String docpendingid = request.getParameter("documentpendingid");
            if (operate != null) {
                int docpendiid = Integer.parseInt(docpendingid);
                if (operate.equals("delete")) {
                    docpendingdao.deleteDocument(docpendiid);
                } else if (operate.equals("add")) {
                    Document doc = docpendingdao.getDocumentById(docpendiid);
                    docdao.createDocument(doc);
                    docpendingdao.deleteDocument(docpendiid);
                }
                doGet(request, response);
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
