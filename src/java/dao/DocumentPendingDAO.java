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

/**
 *
 * @author PC
 */
public class DocumentPendingDAO extends DBContext {

    public DocumentPendingDAO() {
    }

    public ArrayList<Document> getAllDocumentWithSubject() throws Exception {
        ArrayList<Document> list = new ArrayList<>();
        String sql = "select Document_Pending.documentpending_id, Document_Pending.document_url, Document_Pending.document_name,Document_Pending.image_url, Classes.class_id, Subjects.subject_id from Document_Pending\n"
                + "join Subjects on Document_Pending.subject_id = Subjects.subject_id\n"
                + "join Classes on Document_Pending.class_id = Classes.class_id";
        Document doc = null;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                doc = new Document(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(6), rs.getInt(5));
                list.add(doc);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void createDocument(Document documentPending) {
        String sql = "INSERT INTO Document_Pending (document_url, document_name, subject_id, image_url, class_id) VALUES (?, ?, ?, ?, ?)"; // Thêm class_id

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, documentPending.getDoc_url());
            st.setString(2, documentPending.getDocName());
            st.setInt(3, documentPending.getSubject_id());
            st.setString(4, documentPending.getImage_url());
            st.setInt(5, documentPending.getClass_id());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateDocument(Document documentPending) {
        String sql = "UPDATE Document_Pending SET document_url = ?, document_name = ?, subject_id = ?, image_url = ?, class_id = ? WHERE documentpending_id = ?"; // Thêm class_id

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, documentPending.getDoc_url());
            st.setString(2, documentPending.getDocName());
            st.setInt(3, documentPending.getSubject_id());
            st.setString(4, documentPending.getImage_url());
            st.setInt(5, documentPending.getClass_id());
            st.setInt(6, documentPending.getDocId());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteDocument(int documentPendingId) {
        String sql = "DELETE FROM Document_Pending WHERE documentpending_id = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, documentPendingId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Document getDocumentById(int documentPendingId) throws SQLException {
        Document document = null;
        String sql = "SELECT * FROM Document_Pending WHERE documentpending_id = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, documentPendingId);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                document = new Document(
                        rs.getInt("documentpending_id"),
                        rs.getString("document_url"),
                        rs.getString("document_name"),
                        rs.getString("image_url"),
                        rs.getInt("subject_id"),
                        rs.getInt("class_id")
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return document;
    }

    public static void main(String[] args) throws SQLException {
        DocumentPendingDAO dao = new DocumentPendingDAO();
        
    }
}
