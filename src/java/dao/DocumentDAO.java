/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Document;
import model.Subject;

/**
 *
 * @author PC
 */
public class DocumentDAO extends DBContext{
    public DocumentDAO() throws SQLException {
    }
    
    public List<Document> getAllDocument() throws SQLException {
        List<Document> documentList = new ArrayList<>();
        String sql = "SELECT * FROM Document";
        SubjectDAO subDAO = new SubjectDAO();
        try (PreparedStatement st = connection.prepareStatement(sql);
             ResultSet rs = st.executeQuery()) {

            while (rs.next()) {
                Subject subject = subDAO.getSubjectById(rs.getInt("subject_id"));
                Document document = new Document(
                    rs.getInt("document_id"),
                    rs.getString("document_url"),
                    rs.getString("document_name"),
                    rs.getString("image_url"), 
                    subject
                );

                documentList.add(document);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return documentList;
    }
    
    public void createDocument(Document document) {
        String sql = "INSERT INTO Document (document_url, document_name, subject_id, image_url) VALUES (?, ?, ?, ?)";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, document.getDoc_url());
            st.setString(2, document.getDocName());
            st.setInt(3, document.getSubject().getSubjectId()); // Assuming Subject has a getSubjectId method
            st.setString(4, document.getImage_url());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void updateDocument(Document document) {
        String sql = "UPDATE Document SET document_url = ?, document_name = ?, subject_id = ?, image_url = ? WHERE document_id = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, document.getDoc_url());
            st.setString(2, document.getDocName());
            st.setInt(3, document.getSubject().getSubjectId());
            st.setString(4, document.getImage_url());
            st.setInt(5, document.getDocId()); // Assuming Document has a getDocumentId method

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void deleteDocument(int documentId) {
        String sql = "DELETE FROM Document WHERE document_id = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, documentId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public static void main(String[] args) throws SQLException {
        DocumentDAO dao = new DocumentDAO();
        List<Document> list = dao.getAllDocument();
        System.out.println(list);
    }
    
    public Document getDocumentById(int documentId) throws SQLException {
        Document document = null;
        String sql = "SELECT * FROM Document WHERE document_id = ?";
        SubjectDAO subDAO = new SubjectDAO();

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, documentId);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                Subject subject = subDAO.getSubjectById(rs.getInt("subject_id"));
                document = new Document(
                    rs.getInt("document_id"),
                    rs.getString("document_url"),
                    rs.getString("document_name"),
                    rs.getString("image_url"),
                    subject
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return document;
    }
}
