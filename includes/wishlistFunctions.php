<?php
    include_once "includes/dbconn.php";
    include_once "includes/login.php";
    
    if (isset($_GET["action"])) {
        if($_GET["action"] == "addWL") {
            $wl_product_id = $_GET['id'];
            $product_quantity = $_POST['quantity'];
            echo "user_id: " . $_SESSION["global_user_id"] . " product_id: " . $wl_product_id . " quantity: " . $product_quantity;
            $addProductWL = "INSERT INTO `wishlist`(`user_id`, `product_id`,`quantity`) VALUES ({$_SESSION["global_user_id"]}, {$wl_product_id}, {$product_quantity})";
            
            $searchWL = "SELECT * FROM wishlist WHERE user_id={$_SESSION["global_user_id"]} AND product_id={$wl_product_id}";
            $result = mysqli_query($conn, $searchWL);
            
            if (mysqli_num_rows($result)==0) {
                echo " adding item now ";
                mysqli_query($conn, $addProductWL);
                
                //delete product from cart after moving it to wish list 
                $removeProductCart = "DELETE FROM cart WHERE user_id={$_SESSION["global_user_id"]} AND product_id={$wl_product_id}";
                mysqli_query($conn, $removeProductCart);
            }
            else {
                echo '<script>alert("Item is already in your  Wish List!")</script>'; 
            }
        }
    }

    // delete items cart
    if(isset($_GET["action"])) {
        if($_GET["action"] == "deleteWL") {
            //id from remove button
            $prod_id = $_GET['id']; 
            echo "prod_id to delete " . $prod_id;
            
            //delete product with id from remove button 
            $removeProductWish = "DELETE FROM wishlist WHERE user_id={$_SESSION["global_user_id"]} AND product_id={$prod_id}";
            mysqli_query($conn, $removeProductWish);
            
            // echo '<script>alert("Item Removed")</script>';
            // echo '<script>window.location="index.php"</script>';
        }
    }

    
?>