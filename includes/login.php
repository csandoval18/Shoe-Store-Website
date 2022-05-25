<?php
    include_once "includes/dbconn.php";
    session_start();
    //check for username and pass in database user 
    
    $_SESSION["global_user_id"];
    
    //if the user exists it will set the global varible id to that users id to have each a different shopping cart
    if (isset($_POST['submit'])) {
        $un = $_POST['username'];
        $pw = $_POST['password'];
        
        //fetch password from db
        $sql = "SELECT * FROM user where username='$un'";
        $result = mysqli_query($conn, $sql);
        
        if ($row = mysqli_fetch_array($result)) {
            if ($pw == $row['password']) {
                $_SESSION["global_user_id"] = $row['user_id'];
                header("location:products.php");
                exit();
            }
            else 
                echo "Invalid Password";
        }
        else echo "Invalid Username";
    }
 
  
  ?>