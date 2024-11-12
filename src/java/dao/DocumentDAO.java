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

    public List<Document> searchDocuments(String query) throws SQLException {
        DocumentDAO dao = new DocumentDAO();
        List<Document> results = new ArrayList<>();
        for (Document doc : dao.getAllDocument()) {
            if (doc.getDocName().toLowerCase().contains(query.toLowerCase())) {
                results.add(doc);
            }
        }

        return results;
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
            st.execute();
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
        List<Document> list = dao.searchDocuments("Toán", 1, 5);
        int totalDocuments = dao.getTotalDocuments(null);
        int totalPages = (int) Math.ceil((double) totalDocuments / 5);
        System.out.println(list);
        System.out.println(totalDocuments);
        System.out.println(totalPages);
    }

    public ArrayList<Document> getAllDocumentWithSubject() throws Exception {
        ArrayList<Document> list = new ArrayList<>();
        String sql = "select Document.document_id, Document.document_url, Document.document_name,Document.image_url, Classes.class_id, Subjects.subject_id from Document\n"
                + "join Subjects on Document.subject_id = Subjects.subject_id\n"
                + "join Classes on Document.class_id = Classes.class_id";
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

    // Method to get all documents with pagination
    public List<Document> getAllDocuments(int page, int pageSize) {
        List<Document> documents = new ArrayList<>();
        String sql = "SELECT * FROM Document ORDER BY document_id "
                + "OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try ( PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, (page - 1) * pageSize); // Tính toán offset
            pstmt.setInt(2, pageSize);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Document doc = new Document(
                        rs.getInt("document_id"),
                        rs.getString("document_url"),
                        rs.getString("document_name"),
                        rs.getString("image_url"),
                        rs.getInt("subject_id"),
                        rs.getInt("class_id")
                );
                documents.add(doc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return documents;
    }

    // Method to search documents with pagination
    public List<Document> searchDocuments(String query, int page, int pageSize) {
        List<Document> documents = new ArrayList<>();
        String sql = "SELECT * FROM Document WHERE document_name LIKE ? "
                + "ORDER BY document_id OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try ( PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setString(1, "%" + query + "%");
            pstmt.setInt(2, (page - 1) * pageSize); // Tính toán offset
            pstmt.setInt(3, pageSize);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Document doc = new Document(
                        rs.getInt("document_id"),
                        rs.getString("document_url"),
                        rs.getString("document_name"),
                        rs.getString("image_url"),
                        rs.getInt("subject_id"),
                        rs.getInt("class_id")
                );
                documents.add(doc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return documents;
    }

    // Method to get the total number of documents
    public int getTotalDocuments(String searchQuery) {
        int totalDocuments = 0;
        String sql;

        if (searchQuery == null || searchQuery.trim().isEmpty()) {
            sql = "SELECT COUNT(*) FROM Document";
        } else {
            sql = "SELECT COUNT(*) FROM Document WHERE document_name LIKE ?";
        }

        try ( PreparedStatement pstmt = connection.prepareStatement(sql)) {
            if (searchQuery != null && !searchQuery.trim().isEmpty()) {
                pstmt.setString(1, "%" + searchQuery + "%");
            }
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                totalDocuments = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return totalDocuments;
    }
}
