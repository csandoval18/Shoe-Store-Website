<?php
    include_once "includes/dbconn.php";
    include_once "includes/login.php";
    
    //add product to cart table
    if(isset($_POST["add_to_cart"])) {
        
        $product_id = $_GET['id'];
        $product_quantity = $_POST['quantity'];
        //user_id extracted in login.php
        echo "user_id: " . $_SESSION["global_user_id"] . " product id:" . $product_id . " quantity: " . $product_quantity;
        $addProductCart = "INSERT INTO `cart`(`user_id`, `product_id`,`quantity`) VALUES ({$_SESSION["global_user_id"]}, {$product_id}, {$product_quantity})";
        
        $searchCart = "SELECT * FROM cart WHERE user_id={$_SESSION["global_user_id"]} AND product_id={$product_id}";
        $result = mysqli_query($conn, $searchCart);
        if (mysqli_num_rows($result)==0) {
            mysqli_query($conn, $addProductCart);
        }
        else {
            echo '<script>alert("Item is already in your cart")</script>'; 
        }
    }

    // delete items cart
    if(isset($_GET["action"])) {
        if($_GET["action"] == "delete") {
            //id from remove button
            $prod_id = $_GET['id']; 
            
            //delete product with id from remove button 
            $removeProductCart = "DELETE FROM cart WHERE user_id={$_SESSION["global_user_id"]} AND product_id={$prod_id}";
            mysqli_query($conn, $removeProductCart);
            
            // echo '<script>alert("Item Removed")</script>';
            // echo '<script>window.location="index.php"</script>';
        }
    }

    
?>