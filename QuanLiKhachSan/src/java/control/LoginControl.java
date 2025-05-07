package control;

import dao.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy thông tin từ form đăng nhập
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Tạo đối tượng UserDAO
        UserDAO dao = new UserDAO();
        
        // Kiểm tra thông tin đăng nhập với UserDAO
        if (dao.checkLogin(username, password)) {
            // Lấy role của người dùng sau khi đăng nhập thành công
            String role = dao.getRole(username);
            
            // Kiểm tra role và chuyển hướng đến trang tương ứng
            if ("admin".equals(role)) {
                response.sendRedirect("dashboardNV.jsp");  // Trang dành cho nhân viên (Admin)
            } else if ("customer".equals(role)) {
                response.sendRedirect("dashboardCustomer.jsp");  // Trang dành cho khách hàng
            } else {
                // Nếu role không hợp lệ
                request.setAttribute("errorMessage", "Role không hợp lệ.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            // Nếu thông tin đăng nhập không chính xác
            request.setAttribute("errorMessage", "Sai tên đăng nhập hoặc mật khẩu.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Chuyển hướng về trang login nếu là yêu cầu GET
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
