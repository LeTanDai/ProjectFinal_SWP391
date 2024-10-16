/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author TanDai
 */
public class UserDAO extends DBContext {

    public User checkLogin(String username, String password) {
        String sql = "select * from Users\n"
                + "where username = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getInt("user_id"), rs.getString("username"), rs.getString("full_name"), rs.getString("password"), rs.getDate("dob"), rs.getBoolean("gender"), rs.getString("phone_number"), rs.getString("email"), rs.getString("avatar"), rs.getBoolean("isNormal"), rs.getBoolean("isPremium"), rs.getBoolean("isAdmin"), rs.getString("address"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User checkAccountExist(String username) {
        String sql = "Select * from Users where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getInt("user_id"), rs.getString("username"), rs.getString("full_name"), rs.getString("password"), rs.getDate("dob"), rs.getBoolean("gender"), rs.getString("phone_number"), rs.getString("email"), rs.getString("avatar"), rs.getBoolean("isNormal"), rs.getBoolean("isPremium"), rs.getBoolean("isAdmin"), rs.getString("address"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public void signUp(String username, String password, String email, String phone) {
        String sql = "INSERT INTO Users (username, [password], email, phone_number,full_name, dob, gender, avatar, isAdmin,isNormal,isPremium,[address]) VALUES (?,?,?,?,'','','','','0','1','0','')";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, email);
            st.setString(4, phone);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public User getUserByUsername(String username) {
        String sql = "SELECT * FROM Users WHERE username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getInt("user_id"), rs.getString("username"), rs.getString("full_name"), rs.getString("password"), rs.getDate("dob"), rs.getBoolean("gender"), rs.getString("phone_number"), rs.getString("email"), rs.getString("avatar"), rs.getBoolean("isNormal"), rs.getBoolean("isPremium"), rs.getBoolean("isAdmin"), rs.getString("address"));
                return u;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updatePassword(User user) {
        String sql = "UPDATE Users SET password = ? WHERE username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user.getPassword());
            st.setString(2, user.getUserName());
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public User checkAccountExistByUsernameAndEmail(String username, String email) {
        String sql = "SELECT * FROM Users WHERE username = ? AND email = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, username);
            st.setString(2, email);
            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    return new User(
                            rs.getInt("user_id"), 
                            rs.getString("full_name"),
                            rs.getString("username"),
                            rs.getString("password"), 
                            rs.getDate("dob"), 
                            rs.getBoolean("gender"), 
                            rs.getString("phone_number"), 
                            rs.getString("email"), 
                            rs.getString("avatar"), 
                            rs.getBoolean("isNormal"), 
                            rs.getBoolean("isPremium"), 
                            rs.getBoolean("isAdmin"), 
                            rs.getString("address")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
