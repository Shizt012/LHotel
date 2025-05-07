package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

    public Connection getConnection() {
        // Thông tin kết nối
        String url = "jdbc:sqlserver://26.205.177.107:1433;databaseName=QuanLyKhachSan;encrypt=true;trustServerCertificate=true";
        String username = "sa";
        String password = "hieupro10xyz";

        try {
            // Nạp driver JDBC
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            // Tạo và trả về kết nối
            return DriverManager.getConnection(url, username, password);

        } catch (ClassNotFoundException e) {
            System.out.println("🚫 Không tìm thấy JDBC Driver: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("🚫 Lỗi kết nối: " + e.getMessage());
        }
        return null; // Trả về null nếu lỗi
    }

    public static void main(String[] args) {
        DBContext dbContext = new DBContext();
        Connection conn = dbContext.getConnection();

        if (conn != null) {
            System.out.println("✅ Kết nối thành công đến cơ sở dữ liệu!");
            try {
                conn.close(); // Đóng kết nối sau khi test
            } catch (Exception e) {
                System.out.println("⚠️ Lỗi khi đóng kết nối: " + e.getMessage());
            }
        } else {
            System.out.println("❌ Kết nối thất bại. Hãy kiểm tra lại thông tin kết nối.");
        }
    }
}