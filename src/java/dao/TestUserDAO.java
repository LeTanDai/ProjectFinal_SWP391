/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author trong
 */

public class TestUserDAO {
    public static void main(String[] args) {
        // Tạo đối tượng UserDAO để thao tác với cơ sở dữ liệu
        UserDAO userDAO = new UserDAO();

        // Gọi hàm countPremiumUser và countNormalUser để kiểm tra
        int premiumCount = userDAO.countPremiumUser();
        int normalCount = userDAO.countNormalUser();

        // Hiển thị kết quả
        System.out.println("Số lượng người dùng Premium: " + premiumCount);
        System.out.println("Số lượng người dùng Normal: " + normalCount);
    }
}