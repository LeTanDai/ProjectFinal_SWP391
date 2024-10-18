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
import model.ClassS;
import model.Exam;
import model.Subject;

/**
 *
 * @author PC
 */
public class ExamDAO extends DBContext{
    public ExamDAO() throws SQLException {
    }
    
    public List<Exam> getAllExam() throws SQLException {
        List<Exam> examList = new ArrayList<>();
        String sql = "SELECT * FROM Exam";
        SubjectDAO subDAO = new SubjectDAO();
        ClassDAO clDAO = new ClassDAO();
        try (PreparedStatement st = connection.prepareStatement(sql);
             ResultSet rs = st.executeQuery()) {

            while (rs.next()) {
                Subject subject = subDAO.getSubjectById(rs.getInt("subject_id"));
                ClassS _class = clDAO.getClassById(rs.getInt("class_id"));
                Exam ex = new Exam(
                    rs.getInt("exam_id"),
                    rs.getString("exam_url"),
                    rs.getString("exam_name"),
                    _class,
                    subject
                );

                examList.add(ex);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return examList;
    }
    
    public void createExam(Exam exam) throws SQLException {
        String sql = "INSERT INTO Exam (exam_url, exam_name, class_id, subject_id) VALUES (?, ?, ?, ?)";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, exam.getExamUrl());
            st.setString(2, exam.getExamName());
            st.setInt(3, exam.getClassS().getClassId());  // Giả sử getClassS() trả về ClassS object
            st.setInt(4, exam.getSubject().getSubjectId());  // Giả sử getSubject() trả về Subject object

            st.executeUpdate(); // Không cần trả về giá trị
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void updateExam(Exam exam) throws SQLException {
        String sql = "UPDATE Exam SET exam_url = ?, exam_name = ?, class_id = ?, subject_id = ? WHERE exam_id = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, exam.getExamUrl());
            st.setString(2, exam.getExamName());
            st.setInt(3, exam.getClassS().getClassId());
            st.setInt(4, exam.getSubject().getSubjectId());
            st.setInt(5, exam.getExamId()); // Điều kiện cập nhật theo exam_id

            st.executeUpdate(); // Không cần trả về giá trị
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void deleteExam(int examId) throws SQLException {
        String sql = "DELETE FROM Exam WHERE exam_id = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, examId);

            st.executeUpdate(); // Không cần trả về giá trị
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Exam getExamById(int examId) throws SQLException {
        String sql = "SELECT * FROM Exam WHERE exam_id = ?";
        Exam exam = null;
        SubjectDAO subDAO = new SubjectDAO();
        ClassDAO clDAO = new ClassDAO();

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, examId);
            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    Subject subject = subDAO.getSubjectById(rs.getInt("subject_id"));
                    ClassS _class = clDAO.getClassById(rs.getInt("class_id"));

                    exam = new Exam(
                        rs.getInt("exam_id"),
                        rs.getString("exam_url"),
                        rs.getString("exam_name"),
                        _class,
                        subject
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return exam; // Trả về exam hoặc null nếu không tìm thấy
    }

    public static void main(String[] args) throws SQLException {
        ExamDAO dao = new ExamDAO();
        List<Exam> list = dao.getAllExam();
        System.out.println(list);
    }
}
