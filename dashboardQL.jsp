<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang quản lý khách sạn</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body>

<div class="wrapper">
    <div class="container">

        <!-- Sidebar -->
        <div class="sidebar">
            <div class="logo">
                <img src="img/logo.png" alt="Logo" style="height:40px;">
                <span>QL Khách Sạn</span>
            </div>
            <div class="menu">
                <p>Chức năng</p>
                <ul>
                    <li><a href="quanlyphong.jsp">🛏️ Quản lý phòng</a></li>
                    <li><a href="quanlykh.jsp">👥 Quản lý khách hàng</a></li>
                    <li><a href="quanlynv.jsp">🧑‍💼 Quản lý nhân viên</a></li>
                    <li><a href="quanlydatphong.jsp">📋 Đặt phòng</a></li>
                    <li><a href="hoadon.jsp">💰 Hóa đơn</a></li>
                    <li><a href="logout.jsp">🚪 Đăng xuất</a></li>
                </ul>
            </div>
        </div>

        <!-- Main content -->
        <div class="main-content">

            <!-- Header -->
            <div class="header">
                <div class="hamburger">
                    <i class="fas fa-bars"></i>
                </div>
                <div class="icons">
                    <i class="fas fa-bell"></i>
                    <i class="fas fa-user-circle"></i>
                </div>
            </div>

            <!-- Dashboard -->
            <section class="dashboard">
                <h2>Thống kê tổng quan</h2>
                <div class="cards">
                    <div class="card">
                        <p>Phòng trống</p>
                        <div class="value-icon">
                            <span>12</span>
                            <i class="fas fa-door-open"></i>
                        </div>
                    </div>
                    <div class="card">
                        <p>Phòng đã thuê</p>
                        <div class="value-icon">
                            <span>8</span>
                            <i class="fas fa-house-user"></i>
                        </div>
                    </div>
                    <div class="card">
                        <p>Phòng cần dọn</p>
                        <div class="value-icon">
                            <span>3</span>
                            <i class="fas fa-broom"></i>
                        </div>
                    </div>
                </div>

                <h2>Lịch làm việc</h2>
                <div class="schedule-box">
                    <!-- Nội dung lịch làm việc hoặc biểu đồ -->
                </div>
            </section>

        </div>
    </div>
</div>

</body>
</html>
