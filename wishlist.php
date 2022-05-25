<?php 
include_once "includes/dbconn.php";
include_once "includes/login.php";
include_once "includes/cartFunctions.php";
include_once "includes/wishlistFunctions.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Shoe Store | Ecommerce Website Project</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		<link rel="stylesheet" href="bs5/css/bootstrap.css">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
		<!-- <script src="htps://umpkg.com/@popperjs/core@2.4.0/dist/umd/popper.min.js"></script> -->
		<script src="bs5/js/bootstrap.js"></script>
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
        <h3>Order Details</h3>
        <div class="table-responsive">
            <br>
            <h4>Wish List</h4>
            <br>
            <table class="table table-bordered">
                <tr>
                    <th width="40%">Item Name</th>
                    <th width="10%">Quantity</th>
                    <th width="20%">Price</th>
                    <th width="15%">Total</th>
                    <th width="5%">Remove Item</th>
                    <th width="6%">Add to Wish List</th>
                </tr>
                <?php
                
                    //get product info in cart
                    $productsInWL = "SELECT W.product_id, P.name, P.price, W.quantity FROM products P, wishlist W WHERE W.user_id={$_SESSION["global_user_id"]} AND W.product_id=P.product_id";
                    $result = mysqli_query($conn, $productsInWL);
                    // $row = mysqli_fetch_array($result);
                    
                    if (!mysqli_num_rows($result)==0) {
                        $total = 0;
                        while ($row = mysqli_fetch_array($result)) { 

                ?>
                <tr>
                    <td><?php echo $row["name"]; ?></td>
                    <td><?php echo $row["quantity"]; ?></td>
                    <td>$ <?php echo $row["price"]; ?></td>
                    <td>$ <?php echo number_format($row["quantity"] * $row["price"], 2);?></td>
                    <td><a href="wishlist.php?action=deleteWL&id=<?php echo $row["product_id"]; ?>"><span class="text-danger">Remove</span></a></td>
                    
                    <td><a href="cart.php?action=add&id=<?php echo $row["product_id"]; ?>"><span class="btn-success">Add to cart</span></a></td>
                </tr>
                <?php
                        $total = $total + ($row["quantity"] * $row["price"]);
                    }
                ?>
                <tr>
                    <td colspan="3" align="right">Total</td>
                    <td align="right">$ <?php echo number_format($total, 2); ?></td>
                    <td></td>
                    <td></td>
                </tr>
                <?php
                    }
                ?>
                    
            </table>
            
        </div>
    </body>
</html>