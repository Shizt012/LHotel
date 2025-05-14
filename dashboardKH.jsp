<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang khách hàng</title>
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
                <span>Khách Hàng</span>
            </div>
            <div class="menu">
                <p>Chức năng</p>
                <ul>
                    <li><a href="trangchu.jsp">🏠 Trang chủ</a></li>
                    <li><a href="datphong.jsp">🛏️ Đặt phòng</a></li>
                    <li><a href="lichsu.jsp">📋 Lịch sử đặt phòng</a></li>
                    <li><a href="canhan.jsp">👤 Thông tin cá nhân</a></li>
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

            <!-- Dashboard content -->
            <section class="dashboard">
                <h2>Xin chào, khách hàng!</h2>
                <p>Chào mừng bạn đến với hệ thống đặt phòng khách sạn.</p>

                <div class="cards">
                    <div class="card">
                        <p>Phòng đã đặt</p>
                        <div class="value-icon">
                            <span>2</span>
                            <i class="fas fa-door-open"></i>
                        </div>
                    </div>
                    <div class="card">
                        <p>Đang ở</p>
                        <div class="value-icon">
                            <span>1</span>
                            <i class="fas fa-bed"></i>
                        </div>
                    </div>
                    <div class="card">
                        <p>Lịch sử thanh toán</p>
                        <div class="value-icon">
                            <span>3</span>
                            <i class="fas fa-credit-card"></i>
                        </div>
                    </div>
                </div>

                <div style="margin-top: 30px;">
                    <a href="datphong.jsp" class="submit-btn">+ Đặt phòng ngay</a>
                </div>

            </section>

        </div>
    </div>
</div>

</body>
</html>
