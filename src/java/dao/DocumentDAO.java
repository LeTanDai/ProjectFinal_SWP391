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
public class DocumentDAO extends DBContext {

    public DocumentDAO() throws SQLException {
    }

    public List<Document> getAllDocument() throws SQLException {
        List<Document> documentList = new ArrayList<>();
        String sql = "SELECT * FROM Document";
        try ( PreparedStatement st = connection.prepareStatement(sql);  ResultSet rs = st.executeQuery()) {

            while (rs.next()) {
                Document document = new Document(
                        rs.getInt("document_id"),
                        rs.getString("document_url"),
                        rs.getString("document_name"),
                        rs.getString("image_url"),
                        rs.getInt("subject_id"),
                        rs.getInt("class_id") 
                );

                documentList.add(document);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return documentList;
    }

    public void createDocument(Document document) {
        String sql = "INSERT INTO Document (document_url, document_name, subject_id, image_url, class_id) VALUES (?, ?, ?, ?, ?)"; // Thêm class_id

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, document.getDoc_url());
            st.setString(2, document.getDocName());
            st.setInt(3, document.getSubject_id());
            st.setString(4, document.getImage_url());
            st.setInt(5, document.getClass_id()); 

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateDocument(Document document) {
        String sql = "UPDATE Document SET document_url = ?, document_name = ?, subject_id = ?, image_url = ?, class_id = ? WHERE document_id = ?"; // Thêm class_id

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, document.getDoc_url());
            st.setString(2, document.getDocName());
            st.setInt(3, document.getSubject_id());
            st.setString(4, document.getImage_url());
            st.setInt(5, document.getClass_id()); 
            st.setInt(6, document.getDocId()); 

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteDocument(int documentId) {
        String sql = "DELETE FROM Document WHERE document_id = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, documentId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public Document getDocumentById(int documentId) throws SQLException {
        Document document = null;
        String sql = "SELECT * FROM Document WHERE document_id = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, documentId);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                document = new Document(
                        rs.getInt("document_id"),
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
        DocumentDAO dao = new DocumentDAO();
        List<Document> list = dao.getAllDocument();
        System.out.println(list);
    }

}
