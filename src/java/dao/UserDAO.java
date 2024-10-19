/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import jakarta.servlet.http.HttpSession;
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
   public List<User> getAllUsers() {
    List<User> userList = new ArrayList<>();
    String sql = "SELECT * FROM Users"; // Câu lệnh SQL để lấy tất cả người dùng
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            User u = new User(
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
            userList.add(u);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return userList;
}
public User getUserInfoBySession(HttpSession session) {
    // Lấy thông tin người dùng từ session
    if (session != null) {
        User user = (User) session.getAttribute("account");
        if (user != null) {
            return user; // Trả về thông tin người dùng nếu tồn tại
        }
    }
    return null; // Trả về null nếu không tìm thấy
}
 public void updateUser(User user) {
    String sql = "UPDATE Users SET isPremium = ?, isNormal = ? WHERE user_id = ?";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        st.setBoolean(1, user.isIsPremium());
        st.setBoolean(2, false); // Đặt isNormal về false (0)
        st.setInt(3, user.getUserId());
        st.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
    public int countPremiumUser() {
    String sql = "SELECT COUNT(*) FROM Users WHERE isPremium = 1";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            return rs.getInt(1); // Lấy số lượng Premium user
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return 0; // Trả về 0 nếu có lỗi
}

public int countNormalUser() {
    String sql = "SELECT COUNT(*) FROM Users WHERE isNormal = 1";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            return rs.getInt(1); // Lấy số lượng Normal user
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return 0; // Trả về 0 nếu có lỗi
}
public int countAdminUser() {
    String sql = "SELECT COUNT(*) FROM Users WHERE isAdmin = 1"; // Câu lệnh SQL để đếm admin user
    int count = 0;
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        if (rs.next()) {
            count = rs.getInt(1); // Lấy số lượng admin user
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return count;
}



}
