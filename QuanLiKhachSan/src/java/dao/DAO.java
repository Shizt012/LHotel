package dao;
import context.DBContext;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.nhanVien;
import org.apache.catalina.User;
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<nhanVien> getAllnhanVien(){
        List<nhanVien> list = new ArrayList<>();
        String query = "select * from [NhanVien]";
        try{
            conn = new DBContext().getConnection(); //Connect SQL SV
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new nhanVien(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7)
                ));
            }
        }catch (Exception e){
            
        }
        
        return list;
    }
    public static void main(String[] args) {
            DAO dao = new DAO();
            List<nhanVien> list = dao.getAllnhanVien();
            for (nhanVien o : list){
                System.out.println(o);
            }
    }

    public User checkLogin(String username, String password) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
