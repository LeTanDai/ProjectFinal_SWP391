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
import model.Subject;


/**
 *
 * @author PC
 */
public class SubjectDAO extends DBContext {
    public SubjectDAO() throws SQLException {
    }
    
    public List<Subject> getAllSubject() {
        List<Subject> subjectList = new ArrayList<>();
        String sql = "SELECT * FROM Subjects";

        try (PreparedStatement st = connection.prepareStatement(sql);
             ResultSet rs = st.executeQuery()) {

            while (rs.next()) {
                
                Subject subjcet = new Subject(
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
    
    public Subject getSubjectById(int id) {
        Subject subject = null;
        String sql = "SELECT * FROM Subjects WHERE subject_id = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id); // Set the subject ID parameter

            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    subject = new Subject(
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
}
