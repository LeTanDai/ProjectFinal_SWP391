package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    public Connection connection;

    public DBContext() {
        try {
            String url = "jdbc:sqlserver://DESKTOP-OCV25KI:1433;databaseName=SWP391_OnlineLearning;encrypt=false;trustServerCertificate=true;";
            String user = "sa"; // Tên người dùng
            String password = "123123"; // Mật khẩu

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Kết nối thất bại!");
        }
    }

    // Phương thức để đóng kết nối
    public void close() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
