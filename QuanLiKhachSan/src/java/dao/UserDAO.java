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
    public boolean checkLogin(String username, String password) {
        String sqlNhanVien = "SELECT * FROM taikhoan_nhanvien WHERE username=? AND password=?";
        String sqlKhachHang = "SELECT * FROM taikhoan_khachhang WHERE username=? AND password=?";

        try (Connection conn = new DBContext().getConnection()) {

            PreparedStatement psNhanVien = conn.prepareStatement(sqlNhanVien);
            psNhanVien.setString(1, username);
            psNhanVien.setString(2, password);
            ResultSet rsNhanVien = psNhanVien.executeQuery();
            if (rsNhanVien.next()) {
                return true;
            }

            PreparedStatement psKhachHang = conn.prepareStatement(sqlKhachHang);
            psKhachHang.setString(1, username);
            psKhachHang.setString(2, password);
            ResultSet rsKhachHang = psKhachHang.executeQuery();
            if (rsKhachHang.next()) {
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace(); 
        }

        return false;
    }

   
    public String getRole(String username) {
       
        String sqlNhanVien = "SELECT role FROM taikhoan_nhanvien WHERE username=?";
       
        String sqlKhachHang = "SELECT role FROM taikhoan_khachhang WHERE username=?";

        try (Connection conn = new DBContext().getConnection()) {

          
            PreparedStatement psNhanVien = conn.prepareStatement(sqlNhanVien);
            psNhanVien.setString(1, username);
            ResultSet rsNhanVien = psNhanVien.executeQuery();
            if (rsNhanVien.next()) {
                return rsNhanVien.getString("role");
            }

           
            PreparedStatement psKhachHang = conn.prepareStatement(sqlKhachHang);
            psKhachHang.setString(1, username);
            ResultSet rsKhachHang = psKhachHang.executeQuery();
            if (rsKhachHang.next()) {
                return rsKhachHang.getString("role");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

   
}