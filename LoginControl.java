package control;

import dao.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("TaiKhoan");
        String password = request.getParameter("MatKhau");

        UserDAO dao = new UserDAO();
        String role = dao.checkLogin(username, password); // trả về "Nhân Viên", "Khách hàng", hoặc null

        if (role != null) {
            HttpSession session = request.getSession();
            session.setAttribute("TaiKhoan", username);
            session.setAttribute("role", role);

            switch (role) {
                case "Quản lý" -> response.sendRedirect("dashboardQL.jsp");
                case "Khách hàng" -> response.sendRedirect("dashboardKH.jsp");
                default -> {
                    // Phòng trường hợp trả về role lạ (cực hiếm nếu code đúng)
                    request.setAttribute("errorMessage", "Role không hợp lệ.");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }
        } else {
            request.setAttribute("errorMessage", "Sai tên đăng nhập hoặc mật khẩu.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
