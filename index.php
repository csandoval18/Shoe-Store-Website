<?php
    include_once "includes/dbconn.php";
    echo "User login";
?>
    
    <form method="post">
        Username <input type="text" name="username" class="text">
        Password <input type="text" name="password" class="text">
        <input type="submit" name="submit" value="Log in">
    </form>

<?php
    //check for username and pass in database user 
    
    include_once "includes/login.php";
    
  ?>