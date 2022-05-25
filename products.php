<?php
    include_once "includes/dbconn.php";
    include_once "includes/login.php";
    include_once "includes/cartFunctions.php";
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shoe Store | Ecommerce Website Project</title>
    <link rel="stylesheet" href="bs5/css/bootstrap.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <script src="htps://umpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script>
    <script src="bs5/js/bootstrap.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
</head>
<body>
    <header>
        <div class="logo">
            <img src="images/logo1.jpg" width="125" alt="Load error">
        </div>       
        <nav>
            <ul>
                <li><a href="home.html">Home</a></li>
                <li><a href="products.php">Products</a></li>
                <li><a href="#footer">About</a></li>
                <li><a href="#footer">Contacts</a></li>
            </ul>
        </nav>
        <a href="cart.php">
            <div class="cart">
                <img src="images/cart2.png" alt="shopping cart">
            </div>
        </a>
    </header>
    
    <?php
        //gets data from db table products and paginates them into separate pages
        include_once "includes/pagination.php";
    ?>
   <footer>
       
   </footer>
</body>
</html>