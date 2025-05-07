<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>L'hotel Manager</title>
        <link rel="stylesheet" href="css/style.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
            />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap"
            rel="stylesheet"
            />
    </head>
<body><div class="wrapper">
            <header class="header">
                <div class="hamburger"><i class="fa fa-bars"></i></div>
                <div class="icons">
                    <i class="fa fa-bell"></i>
                    <i class="fa fa-user-circle"></i>
                </div>
            </header>
            <div class="container">
                <aside class="sidebar">
                    <div class="logo">
                        <img src="img/LHotel.png" />
                    </div>
                    <nav class="menu">
                        <p>Menu</p>
                        <ul>
                            <li>
                                <strong>Quản lý</strong>
                                <ul>
                                    <li><a href="nhanvien">Nhân viên</a></li>

                                    <li>Phòng</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Đặt phòng</strong>
                                <ul>
                                    <li>Phòng trống</li>
                                    <li>Xem lịch</li>
                                </ul>
                            </li>
                            <li>
                                <strong>Dịch vụ</strong>
                                <ul>
                                    <li>Ăn uống</li>
                                    <li>Lau dọn</li>
                                    <li>Giặt giũ</li>
                                </ul>
                            </li>
                            <li><strong>Báo cáo</strong></li>
                        </ul>
                    </nav>
                </aside>

                <main class="main-content">

                    <h2>Danh sách Nhân viên</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Mã nhân viên</th>
                <th>Họ tên</th>
                <th>Chức vụ</th>
                <th>Mã quản lý</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th>Lương</th>
            </tr>
        </thead>
        <c:if test="${empty listNhanVien}">
    <p>Không có dữ liệu nhân viên</p>
</c:if>

        <tbody>
            <c:forEach var="nv" items="${listNhanVien}">
                <tr>
                    <td>${nv.maNV}</td>
                    <td>${nv.hoTenNV}</td>
                    <td>${nv.chucVu}</td>
                    <td>${nv.maQL}</td>
                    <td>${nv.sdt}</td>
                    <td>${nv.emailNV}</td>
                    <td>${nv.luong}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
                </main>
            </div>
        </div>
    
</body>
</html>
