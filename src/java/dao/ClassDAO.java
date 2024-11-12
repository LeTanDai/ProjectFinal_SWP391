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
import model.Classes;

/**
 *
 * @author PC
 */
public class ClassDAO extends DBContext {

    public ClassDAO() throws SQLException {
    }

    public List<Classes> getAllClass() {
        List<Classes> classtList = new ArrayList<>();
        String sql = "SELECT * FROM Classes";

        try ( PreparedStatement st = connection.prepareStatement(sql);  ResultSet rs = st.executeQuery()) {

            while (rs.next()) {

                Classes _class = new Classes(
                        rs.getInt("class_id"),
                        rs.getString("class_name")
                );

                classtList.add(_class);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return classtList;
    }

    public Classes getClassById(int id) {
        Classes _class = null;
        String sql = "SELECT * FROM Classes WHERE class_id = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id);

            try ( ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    _class = new Classes(
                            rs.getInt("class_id"),
                            rs.getString("class_name")
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return _class; 
    }

    public Classes getClassByName(String className) {
        Classes _class = null;
        String sql = "SELECT * FROM Classes WHERE class_name = ?";

        try ( PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, className); // Set the class name parameter

            try ( ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    _class = new Classes(
                            rs.getInt("class_id"),
                            rs.getString("class_name")
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return _class; 
    }


    public String getClassNameById(int classId) {
        String className = null;
        String sql = "SELECT class_name FROM Classes WHERE class_id = ?";

        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, classId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    className = rs.getString("class_name");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return className;
    }

    public int getClassIdByName(String className) {
        int classId = 0;
        String sql = "SELECT class_id FROM Classes WHERE class_name = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, className);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                classId = rs.getInt("class_id");
            }
        } catch (SQLException e) {
            System.err.println("Error while retrieving class ID: " + e.getMessage());
        }

        return classId;
    }


    public static void main(String[] args) throws SQLException {
        ClassDAO dao = new ClassDAO();
        List<Classes> cl = dao.getAllClass();
        System.out.println(cl);
        Classes c = dao.getClassByName("Lớp 10");
        System.out.println(c);
    }
}
