package dao;
import context.DBContext;
import entity.User;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.nhanVien;
import java.sql.SQLException;

        
public class UserDAO {
    public String checkLogin(String username, String password) {
        String sqlNhanVien = "SELECT * FROM TaiKhoanQL WHERE Taikhoan=? AND MatKhau=?";
        String sqlKhachHang = "SELECT * FROM TaiKhoanKH WHERE TaiKhoan=? AND MatKhau=?";

        try (Connection conn = new DBContext().getConnection()) {

            PreparedStatement psNhanVien = conn.prepareStatement(sqlNhanVien);
            psNhanVien.setString(1, username);
            psNhanVien.setString(2, password);
            ResultSet rsNhanVien = psNhanVien.executeQuery();
            if (rsNhanVien.next()) {
                return "Quản lý";
            }

            PreparedStatement psKhachHang = conn.prepareStatement(sqlKhachHang);
            psKhachHang.setString(1, username);
            psKhachHang.setString(2, password);
            ResultSet rsKhachHang = psKhachHang.executeQuery();
            if (rsKhachHang.next()) {
                return "Khách hàng";
            }

        } catch (SQLException e) {
            e.printStackTrace(); 
        }

        return null;
    }
}

  