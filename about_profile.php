<!doctype html>
<html class="no-js" lang="en">
<?php
session_start();
if(!isset($_SESSION["uid"])){
	header("location:index.php");
}
?>


<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Auto Spare Parts</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <!-- CSS 
    ========================= -->

    <?php  
//linkkkk
include'top_head.php';
?>

</head>



<body>
   
    <!--header area start-->
    
    <!--offcanvas menu area start-->
    <div class="off_canvars_overlay">
                
    </div>

    <?php  
//include'top_menu_bar_login.php';
?>
    <!--offcanvas menu area end-->

    <?php  
include'header_profile.php';
?>
    <!--header area end-->

    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="index.html">home</a></li>
                            <li>about us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
    
    <!--about bg area start-->
    <div class="about_bg_area">
       <div class="container">
            <!--about section area -->
            <section class="about_section mb-60"> 
                <div class="row align-items-center">
                    <div class="col-12">
                       <figure>
                            <div class="about_thumb">
                                <img src="assets/img/about/about1.jpg" alt="">
                            </div>
                            <figcaption class="about_content">
                                <p>Welcome to our automobile spare parts website, where we offer an extensive range of high-quality parts for all kinds of vehicles.

At our company, we are passionate about providing our customers with the best possible service, ensuring that they have access to the parts they need to keep their vehicles running smoothly. With years of experience in the industry, we have built up a reputation for our expertise, reliability, and commitment to customer satisfaction.

Our team of experts carefully selects each and every product that we offer, ensuring that they meet our high standards of quality and reliability. We understand the importance of having reliable and durable parts for your vehicle, which is why we only work with the most trusted brands in the industry.

Whether you are a professional mechanic or a car enthusiast, our website is the perfect place to find the parts you need to keep your vehicle in top condition. From engine parts to brake components, we have everything you need to maintain and repair your vehicle.

At our company, we are dedicated to providing our customers with the best possible shopping experience. We offer fast shipping, secure payment options, and a friendly and knowledgeable customer service team that is always ready to help.

Thank you for choosing our automobile spare parts website. We look forward to serving you!</p>
                                
                            </figcaption>
                        </figure>
                    </div>    
                </div>   
            </section>
            <!--about section end-->

            <!--chose us area start-->
            <div class="choseus_area" data-bgimg="assets/img/about/about-us-policy-bg.jpg">
                <div class="row">
                        <div class="col-lg-4 col-md-4">
                            <div class="single_chose">
                                <div class="chose_icone">
                                    <img src="assets/img/about/About_icon1.png" alt="">
                                </div>
                                <div class="chose_content">
                                    <h3>Creative Design</h3>
                                    <p>Erat metus sodales eget dolor consectetuer, porta ut purus at et alias, nulla ornare velit amet</p>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="single_chose">
                                <div class="chose_icone">
                                    <img src="assets/img/about/About_icon2.png" alt="">
                                </div>
                                <div class="chose_content">
                                    <h3>100% Money Back Guarantee</h3>
                                    <p>Erat metus sodales eget dolor consectetuer, porta ut purus at et alias, nulla ornare velit amet</p>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="single_chose">
                                <div class="chose_icone">
                                    <img src="assets/img/about/About_icon3.png" alt="">
                                </div>
                                <div class="chose_content">
                                    <h3>Online Support 24/7</h3>
                                    <p>Erat metus sodales eget dolor consectetuer, porta ut purus at et alias, nulla ornare velit amet</p>

                                </div>
                            </div>
                        </div>
                    </div>
            </div>

            <!--chose us area end-->      

            <!--services img area-->
            <div class="about_gallery_section mb-55"> 
                <div class="row">
                        <div class="col-lg-4 col-md-4">
                            <article class="single_gallery_section">
                                <figure>
                                    <div class="gallery_thumb">
                                        <img src="assets/img/about/about2.jpg" alt="">
                                    </div>
                                    <figcaption class="about_gallery_content">
                                       <h3>What do we do?</h3>
                                        <p>We specialize in providing parts for all types of vehicles, including cars, trucks, and motorcycles. Our inventory includes a wide variety of engine parts, brake components, suspension parts, electrical components, and more, ensuring that we have everything you need to keep your vehicle running smoothly.</p>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <article class="single_gallery_section">
                                <figure>
                                    <div class="gallery_thumb">
                                        <img src="assets/img/about/about3.jpg" alt="">
                                    </div>
                                    <figcaption class="about_gallery_content">
                                       <h3>Our Mission</h3>
                                        <p>At our automobile spare parts website, our mission is to provide our customers with the highest quality parts and the best possible shopping experience.
We understand the importance of reliable and durable parts for your vehicle, which is why we are committed to offering only the best products from the most trusted brands in the industry. Our mission is to help you keep your vehicle running smoothly and safely, so that you can enjoy the full benefits of your investment</p>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <article class="single_gallery_section">
                                <figure>
                                    <div class="gallery_thumb">
                                        <img src="assets/img/about/about4.jpg" alt="">
                                    </div>
                                    <figcaption class="about_gallery_content">
                                       <h3>History Of Us</h3>
                                        <p>Over the years, our company has grown and evolved, expanding our inventory to include a wide variety of parts for all types of vehicles. We have built a reputation for our expertise, reliability, and commitment to customer satisfaction, earning the trust and loyalty of customers across the globe.</p>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                    </div>   
            </div>
            <!--services img end-->    

            <!--testimonial area start-->
            <div class="faq-client-say-area">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="faq-client_title">
                            <h2>What can we do for you ?</h2>
                        </div>
                        <div class="faq-style-wrap" id="faq-five">
                            <!-- Panel-default -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        <a id="octagon" class="collapsed" role="button" data-bs-toggle="collapse" data-bs-target="#faq-collapse1" aria-expanded="true" aria-controls="faq-collapse1"> <span class="button-faq"></span>Fast Free Delivery</a>
                                    </h5>
                                </div>
                                <div id="faq-collapse1" class="collapse show" aria-expanded="true" role="tabpanel" data-parent="#faq-five">
                                    <div class="panel-body">
                                    <p>We offer fast delivery on any order</p>
                                            <p>No minimum shopping condition. Buy anything and get your free fast delivery at your doorstep. 
                                            </p>
                                            <p>Our all customer are happy with our services.Your product will be undmaged, so be relaxed. </p>
                                    </div>
                                </div>
                            </div>
                            <!--// Panel-default -->

                            <!-- Panel-default -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        <a class="collapsed" role="button" data-bs-toggle="collapse" data-bs-target="#faq-collapse2" aria-expanded="false" aria-controls="faq-collapse2"> <span class="button-faq"></span>More Than 30 Years In The Business</a>
                                    </h5>
                                </div>
                                <div id="faq-collapse2" class="collapse" aria-expanded="false" role="tabpanel" data-parent="#faq-five">
                                    <div class="panel-body">
                                    <p>We are in this buisness in more than 15 years.</p>
                                        <p>Our working and customer satisfaction made us to continue running our buisness till 15 years.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!--// Panel-default -->

                            <!-- Panel-default -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h5 class="panel-title">
                                        <a class="collapsed" role="button" data-bs-toggle="collapse" data-bs-target="#faq-collapse3" aria-expanded="false" aria-controls="faq-collapse3"> <span class="button-faq"></span>Best Shopping Strategy</a>
                                    </h5>
                                </div>
                                <div id="faq-collapse3" class="collapse" role="tabpanel" data-parent="#faq-five">
                                    <div class="panel-body">
                                    <p>We offer you best of the products at best price.</p>
                                        <p>Our products are always value for money.We also offer discounts on various products.And assurity that 100% product will be legit.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!--// Panel-default -->

                        </div>

                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="testimonials-area">
                            <div class="faq-client_title">
                                <h2>What Our Customers Says ?</h2>
                            </div>
                            <div class="testimonial-two owl-carousel">
                                <div class="testimonial-wrap-two text-center">
                                        <div class="quote-container">
                                            <div class="quote-image">
                                                <img src="assets/img/about/testimonial1.jpg" alt="">
                                            </div>
                                            <div class="testimonials-text">
                                                <p>Support and response has been amazing, helping me with several issues I came across and got them solved almost the same day. A pleasure to work with them!</p>
                                            </div>
                                            <div class="author">
                                                <h6>Soham Kapoor</h6>
                                            </div>
                                            
                                        </div>
                                    </div>
                                <div class="testimonial-wrap-two text-center">
                                        <div class="quote-container">
                                            <div class="quote-image">
                                                <img src="assets/img/about/testimonial2.jpg" alt="">
                                            </div>
                                            <div class="testimonials-text">
                                                <p>I found exactly what I was looking for on this website, and the ordering process was quick and easy. The part arrived on time and was exactly as described. I will definitely be ordering from here again.</p>
                                            </div>
                                            <div class="author">
                                                <h6>Onkar Patil</h6>
                                            </div>
                                        </div>
                                    </div>
                                <div class="testimonial-wrap-two text-center">
                                        <div class="quote-container">
                                            <div class="quote-image">
                                                <img src="assets/img/about/testimonial3.jpg" alt="">
                                            </div>
                                            <div class="testimonials-text">
                                                <p>This website has a huge selection of parts for all kinds of vehicles, and the prices are very competitive. I also appreciate their fast shipping and excellent customer service</p>
                                            </div>
                                            <div class="author">
                                                <h6>Mitali Pawar</h6>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--testimonial area end-->
        </div>
    </div>
    <!--about bg area end-->

     <!--brand area start-->
     <?php  
include'brandarea.php';
?>
    <!--brand area end-->
    
     <!--footer area start-->
     <?php  
include'footer.php';
?>
    <!--footer area end-->
   
   
    
<!-- JS
============================================ -->

<!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>



</body>


</html>