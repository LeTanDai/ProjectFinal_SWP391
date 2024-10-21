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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author TanDai
 */
public class UserDAO extends DBContext {

    public UserDAO() {
    }
    
    public List<User> getAllUser() {
        List<User> userList = new ArrayList<>();
        String sql = "select * from Users";

        try (PreparedStatement st = connection.prepareStatement(sql);
             ResultSet rs = st.executeQuery()) {

            while (rs.next()) {
                
                User user = new User(
                    rs.getInt("user_id"),
                    rs.getString("full_name"),
                    rs.getString("username"),
                    rs.getString("password"), // Include password
                    rs.getDate("dob"),
                    rs.getBoolean("gender"), // Directly using boolean
                    rs.getString("phone_number"),
                    rs.getString("email"),
                    rs.getString("avatar"),
                    rs.getBoolean("isNormal"),
                    rs.getBoolean("isPremium"),
                    rs.getBoolean("isAdmin"),
                    rs.getString("address")
                );

                userList.add(user);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return userList;
    }
    
    public User getUserById(int id) {
        User user = null;
        String sql = "SELECT * "
                   + "FROM Users u "
                   + "WHERE u.user_id = ?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, id); // Set the user ID parameter

            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    user = new User(
                    rs.getInt("user_id"),
                    rs.getString("full_name"),
                    rs.getString("username"),
                    rs.getString("password"), // Include password
                    rs.getDate("dob"),
                    rs.getBoolean("gender"), // Directly using boolean
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
            System.out.println(e);
        }

        return user; // Returns null if no user found
    }
    
    // Update user profile (only specific fields)
    public void updateUserProfile(String fullName, String email, java.util.Date dob, String phoneNumber, String address, int userId) {
        String sql = "UPDATE Users SET full_name = ?, dob = ?, email = ?, phone_number = ?, address = ? WHERE user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, fullName); // Họ tên
            st.setDate(2, new java.sql.Date(dob.getTime())); // Ngày sinh
            st.setString(3, email); // Email
            st.setString(4, phoneNumber); // Số điện thoại
            st.setString(5, address); // Địa chỉ
            st.setInt(6, userId); // ID người dùng

            st.executeUpdate(); // Thực thi câu lệnh cập nhật
        } catch (SQLException e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
    }
    
    public void updateUserProfile(String fullName, String email, java.util.Date dob, String phoneNumber, String address, String avatar, int userId) {
        String sql = "UPDATE Users SET full_name = ?, dob = ?, email = ?, phone_number = ?, address = ?, avatar = ? WHERE user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, fullName); // Họ tên
            st.setDate(2, new java.sql.Date(dob.getTime())); // Ngày sinh
            st.setString(3, email); // Email
            st.setString(4, phoneNumber); // Số điện thoại
            st.setString(5, address); // Địa chỉ
            st.setString(6, avatar);
            st.setInt(7, userId); // ID người dùng

            st.executeUpdate(); // Thực thi câu lệnh cập nhật
        } catch (SQLException e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
    }
    
    public User checkLogin(String username, String password) {
        String sql = "SELECT * FROM Users WHERE username = ? AND password = ?";              
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User u = new User(rs.getInt("user_id"), rs.getString("full_name"), rs.getString("username"), rs.getString("password"), rs.getDate("dob"), rs.getBoolean("gender"), rs.getString("phone_number"), rs.getString("email"), rs.getString("avatar"), rs.getBoolean("isNormal"), rs.getBoolean("isPremium"), rs.getBoolean("isAdmin"), rs.getString("address"));
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

    public void signUp(String username, String password, String email, String phone){
        String sql = "INSERT INTO Users (username, [password], email, phone_number,full_name, dob, gender, avatar, isAdmin,isNormal,isPremium,[address]) VALUES (?,?,?,?,'','','','','0','1','0','')";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, email);
            st.setString(4, phone);
            st.executeUpdate();
        }
        catch(SQLException e){
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
                User u = new User(rs.getInt("user_id"), rs.getString("full_name"), rs.getString("username"), rs.getString("password"), rs.getDate("dob"), rs.getBoolean("gender"), rs.getString("phone_number"), rs.getString("email"), rs.getString("avatar"), rs.getBoolean("isNormal"), rs.getBoolean("isPremium"), rs.getBoolean("isAdmin"), rs.getString("address"));
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
        
    public static void main(String[] args) throws SQLException, ParseException {
        UserDAO dao = new UserDAO();
        User user = dao.getUserById(2);
        String dobString = "12/09/2004";
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        java.util.Date parsedDate = dateFormat.parse(dobString);
        Date dob = new Date(parsedDate.getTime()); // Chuyển đổi sang java.sql.Date
        dao.updateUserProfile("phuc", "phuc@gmail.com", dob, "1234567888", "Da Nang", "https://file.hstatic.net/200000503583/file/tao-dang-chup-anh-nam__97__faf6ebcf651d4400a946e6a21dda1a33.jpg" ,user.getUserId());
        User u = dao.getUserById(2);
        System.out.println(u);
    }
}
