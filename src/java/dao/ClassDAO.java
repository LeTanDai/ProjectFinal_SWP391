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


/**
 *
 * @author PC
 */
public class ClassDAO extends DBContext{

    public ClassDAO() throws SQLException {
    }
    
    public List<ClassS> getAllClass() {
        List<ClassS> classtList = new ArrayList<>();
        String sql = "SELECT * FROM Classes";

        try (PreparedStatement st = connection.prepareStatement(sql);
             ResultSet rs = st.executeQuery()) {

            while (rs.next()) {
                
                ClassS _class = new ClassS(
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
    
    public ClassS getClassById(int id) {
        ClassS _class = null;
        String sql = "SELECT * FROM Classes WHERE class_id = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id); // Set the subject ID parameter

            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    _class = new ClassS(
                        rs.getInt("class_id"),
                        rs.getString("class_name")
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return _class; // Returns null if no subject found
    }
    
    public static void main(String[] args) throws SQLException {
        ClassDAO dao = new ClassDAO();
        ClassS cl = dao.getClassById(1);
        System.out.println(cl);
    }
}
