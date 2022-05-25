<?php 
    //define num of result per page
    $results_per_page = 12;
    
    $sql_query = "SELECT * FROM products";
    $result = mysqli_query($conn, $sql_query);
    $number_of_results = mysqli_num_rows($result);
    
    
    //find number of total pages needed
    $number_of_pages = ceil($number_of_results / $results_per_page);
    
    //find which page number visitor is on
    if (!isset($_GET['page'])) {
        $page = 1;
    }
    else {
        $page = $_GET['page'];
    }
        
    //find sql limit starting num for results of products
    $this_page_first_result = ($page-1) * $results_per_page;
    
    //retrieve selected product results from db
    $sql_query = "SELECT * FROM products LIMIT " . $this_page_first_result  . ',' . $results_per_page;
    $result = mysqli_query($conn, $sql_query);
    
    ?>
    <div class="products">
        <div class="row">
            <?php while ($row = mysqli_fetch_array($result)) { ?>
                <div class="col-md prod_block">
                    <form method="post" action="cart.php?action=add&id=<?php echo $row["product_id"]; ?>">
                    <img src="<?php echo $row['image']; ?>"> 
                    
                    <div class="col-md prod_desc">
                        <p><?php echo $row['name']; ?> </p> 
                    </div>
                    
                    <div class="row price_cart">
                        <div class="col-md price">
                            <p> <?php echo $row['price'] . ' ' . $row['currency'] ?> </p>
                        </div>
                
                        <div class="col-md pag_cart">
                            <!-- <input type="image" src="images/cart1.png" name="add" class="cartbtn"> -->
                            <input type="text" name="quantity" value="1" class="form-control" />
                            <input type="submit" name="add_to_cart" style="margin-top:5px;" class="btn btn-success" value="Add to Cart" />
                        </div>
                    </div>
                    </form>
                </div>
            <?php } ?>
        </div>
    </div>
        
    <div class="links">
        <?php
            //display links to the pages
            for ($page=1; $page <= $number_of_pages; ++$page) {
                echo '<a href="products.php?page=' . $page . '">' . $page . '</a> ';
            }
        ?>
    </div>
        
