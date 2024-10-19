/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author trong
 */
public class TestConnection {

    public static void main(String[] args) {
        // Tạo một instance của DBContext để kiểm tra kết nối
        DBContext dbContext = new DBContext();

        // Kiểm tra nếu kết nối không null, có nghĩa là kết nối thành công
        if (dbContext.connection != null) {
            System.out.println("Kết nối thành công đến cơ sở dữ liệu!");

            // Câu lệnh SQL để lấy dữ liệu từ bảng Users
            String querySQL = "SELECT * FROM Users";

            try {
                // Tạo một Statement để thực hiện câu lệnh SQL
                Statement stmt = dbContext.connection.createStatement();
                
                // Thực thi lệnh truy vấn và lấy kết quả trả về
                ResultSet rs = stmt.executeQuery(querySQL);
                
                // In dữ liệu từ bảng Users
                while (rs.next()) {
                    int userId = rs.getInt("user_id");
                    String fullName = rs.getString("full_name");
                    String username = rs.getString("username");
                    String email = rs.getString("email");
                    String phoneNumber = rs.getString("phone_number");
                    boolean isAdmin = rs.getBoolean("isAdmin");

                    // In kết quả
                    System.out.println("User ID: " + userId);
                    System.out.println("Full Name: " + fullName);
                    System.out.println("Username: " + username);
                    System.out.println("Email: " + email);
                    System.out.println("Phone Number: " + phoneNumber);
                    System.out.println("Is Admin: " + isAdmin);
                    System.out.println("---------------------------");
                }
            } catch (Exception e) {
                System.out.println("Lỗi khi lấy dữ liệu: " + e.getMessage());
            } finally {
                // Đóng kết nối sau khi kiểm tra và thực hiện
                dbContext.close();
            }
        } else {
            System.out.println("Kết nối thất bại!");
        }
    }
}
