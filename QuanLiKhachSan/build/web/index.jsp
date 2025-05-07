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
    <body>
        <div class="wrapper">
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
                                <strong>Qu?n lý</strong>
                                <ul>
                                    <li><a href="nhanvien">Nhân viên</a></li>

                                    <li>Phòng</li>
                                </ul>
                            </li>
                            <li>
                                <strong>??t phòng</strong>
                                <ul>
                                    <li>Phòng tr?ng</li>
                                    <li>Xem l?ch</li>
                                </ul>
                            </li>
                            <li>
                                <strong>D?ch v?</strong>
                                <ul>
                                    <li>?n u?ng</li>
                                    <li>Lau d?n</li>
                                    <li>Gi?t gi?</li>
                                </ul>
                            </li>
                            <li><strong>Báo cáo</strong></li>
                        </ul>
                    </nav>
                </aside>

                <main class="main-content">

                    <jsp:include page="dashboard.jsp" />
                </main>
            </div>
        </div>

    </body>
</html>
