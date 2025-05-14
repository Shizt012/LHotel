
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">


    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/CustomerStyle.css">
</head>

<body>
    <!-- <div class="header-login">
        <a href="#">
            <img src="./img/Hotel.jpg" alt="Logo" />
        </a>
    </div>

    <div class="login-field">
        <div class="login-background">
            <div class="login-title">
                <span>Sign In</span>
            </div>
            
        </div>
    </div> -->
    <header class="customer-header">
        <div class="customer-content">
            <nav class="customer-navbar">
                <!-- Logo -->
                <img class="Logo" src="./img/L_Hotel-removebg-preview.png" alt="L_Hotel" />
                <!-- Navigation -->
                <ul>
                    <li><a href="./Customer.html">Home</a></li>
                    <li><a href ="./Customer.html" href="#Services">Services</a></li>
                    <li><a href="#Contact">Contact</a></li>
                    <li><a href="#!">Room</a></li>
                </ul>
                <div class="actions">
                    <a href="./DangKy.html" class="btn action-btn">Sign up</a>
                </div>
            </nav>
        </div>
        <div class="hero">
            <!-- <div class="Logo-hero-customer">
                <img src="./img/L_Hotel-removebg-preview.png" alt="">
                <h2>The Best Hotel In Viet Nam</h2>
              </div> -->
            <!-- <div class="hero-overlay">
                <h1 class="hotel-name">L'Hotel VietNam</h1>
                <p class="hero-slogan">Experience Luxury and Comfort Like Never Before</p>
                <p class="hero-desc">Enjoy top-class services, delicious cuisine, and relaxing moments by the beach.</p>
                <a href="#!" class="hero-btn">Book Now</a>
            </div>
            <div class="infor">

            </div> -->
            <div class="login-container">
                <div class="login-background">
                    <div class="login-title">
                        <span>Sign In</span>
                    </div>
                    <div class="login-form">
                        <form action="login" method="post" class="login-form">
                            <div class="field username-field">
                                <input type="text" id="username" name="TaiKhoan" placeholder="Username">
                            </div>
                            <div class="field password-field">
                                <input type="password" id="password" name="MatKhau" placeholder="Password">
                            </div>
                            <div class="field button-field">
                                <button class="button button-login" type="submit">LOGIN</button>
                                <a href="DangKy.html" class="button button-register">REGISTER</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


        </div>
    </header>
</body>

</html>