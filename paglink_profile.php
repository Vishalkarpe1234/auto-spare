  <!--Categories product area start-->
    <!--Categories product area end-->

                  
    <?PHP
						include"db/db.php";

					//$selecte_id = $_SESSION["uid"];
					$data = "SELECT * FROM categories ";
					$view = mysqli_query($con,$data);
					while($_view = mysqli_fetch_assoc($view))
					{

                        $cat_title = $_view['cat_title'];
                        $cat_p_id = $_view['cat_id'];

                        $data21 = "SELECT * FROM products where product_cat ='$cat_p_id' ";
                        $view21 = mysqli_query($con,$data21);
                        while($_view21 = mysqli_fetch_assoc($view21))
                        {
    
                            $cat_t_img = $_view21['product_image'];
                          
                            

                        
                    
                        ?>



<div class="categories_product_area mb-80">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="categories_product_inner categories_column7 owl-carousel">
                <div class="single_categories_product">

                  

                <div class="categories_product_thumb">
                        <a href="cat_product_select_sh_profile.php?id=<?php echo $cat_p_id; ?>"><img src="login/Image_Product/<?php echo $cat_t_img; ?>" alt=""></a>
                    </div>
                    <div class="categories_product_content">

                        <h4><a href="cat_product_select_sh_profile.php?id=<?php echo $cat_p_id; ?>"><?php echo $cat_title;  ?></a></h4>

                    </div>


         

                </div>
            </div>
                </div>
            </div>
        </div>
    </div>
  

                            <?php
                    } }
                        
                            ?>
