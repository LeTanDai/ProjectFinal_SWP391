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
import model.Subjects;

/**
 *
 * @author PC
 */
public class SubjectDAO extends DBContext {

    public SubjectDAO(){
    }

    public List<Subjects> getAllSubject() {
        List<Subjects> subjectList = new ArrayList<>();
        String sql = "SELECT * FROM Subjects";

        try (PreparedStatement st = connection.prepareStatement(sql); ResultSet rs = st.executeQuery()) {

            while (rs.next()) {

                Subjects subjcet = new Subjects(
                        rs.getInt("subject_id"),
                        rs.getString("subject_name")
                );

                subjectList.add(subjcet);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return subjectList;
    }

    public Subjects getSubjectById(int id) {
        Subjects subject = null;
        String sql = "SELECT * FROM Subjects WHERE subject_id = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id); // Set the subject ID parameter

            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    subject = new Subjects(
                            rs.getInt("subject_id"),
                            rs.getString("subject_name")
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return subject; // Returns null if no subject found
    }

    public Subjects getSubjectByName(String subjectName) {
        Subjects subject = null;
        String sql = "SELECT * FROM Subjects WHERE subject_name = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, subjectName); // Set the subject name parameter

            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    subject = new Subjects(
                            rs.getInt("subject_id"),
                            rs.getString("subject_name")
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return subject; // Returns null if no subject found
    }

    public String getSubjectNameById(int subjectId) {
        String subjectName = null;
        String sql = "SELECT subject_name FROM Subjects WHERE subject_id = ?";

        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, subjectId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    subjectName = rs.getString("subject_name");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return subjectName;
    }

    public static void main(String[] args) throws SQLException {
        SubjectDAO dao = new SubjectDAO();
        List<Subjects> list = dao.getAllSubject();
        System.out.println(list);
        Subjects sr = dao.getSubjectByName("Hóa");
        System.out.println(sr);
    }
}
