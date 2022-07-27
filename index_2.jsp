<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Exchange Book System</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="style.css">
    <style>
    input:focus{
    	background:#fff !important;
    	colo
    }
    </style>

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <div class="header-1">

        <a href="image/logo.png" class="logo"> <i class="fas fa-book"></i> ICT Book Store </a>

        <form action="searchbook_2.jsp" class="search-form" style="background:#fff;">
            <input type="text" name="Book_name" placeholder="search here..." id="search-box">
            <button type="submit" class="bt" style="background:none !important;"><i class="fas fa-search" style="margin-right:20px;background:#fff !important;"></i></button>
        </form>

        <div class="icons">
            <div id="search-btn" class="fas fa-search"></div>
            <a href="cart1.jsp" class="fas fa-shopping-cart"></a>
            <div id="login-btn" class="fas fa-user">
            <%
            String x = request.getParameter("username");
            out.print(x);
            %>
            </div>
        </div>

    </div>
<div class="header-2">
        <nav class="navbar">
            <a href="index.html">Home</a>
            <a href="purchasebook.html">Purchase Book</a>
            <a href="publishbook.jsp">Publish Book</a>
            <a href="newarrivals.html"> New Arrivals</a>
            <a href="deals.html">Deals</a>
            <a href="contact/index.html">Contact Us</a>
        </nav>
    </div>

</header>

<!-- header section ends -->

<!-- bottom navbar  -->

<nav class="bottom-navbar">
    <a href="index.html" class="fas fa-home"></a>
    <a href="#featured" class="fas fa-list"></a>
    <a href="#arrivals" class="fas fa-tags"></a>
    <a href="#reviews" class="fas fa-comments"></a>
    <a href="#blogs" class="fas fa-blog"></a>
</nav>

<!-- login form  -->

<div class="login-form-container">

    <div id="close-login-btn" class="fas fa-times"></div>

    <form action="login.jsp">
        <h3>sign in</h3>
        <span>username</span>
        <input type="text" name="username" class="box" placeholder="enter your email" id="">
        <span>password</span>
        <input type="password" name="password" class="box" placeholder="enter your password" id="">
        <div class="checkbox">
            <input type="checkbox" name="" id="remember-me">
            <label for="remember-me"> remember me</label>
        </div>
        <input type="submit" value="sign in" class="btn">
        <p>don't have an account ? <a href="login_signup.html">create one</a></p>
    </form>

</div>

<!-- home section starts  -->

<section class="home" id="home">

    <div class="row">

        <div class="content">
            <h3>upto 75% off</h3>
            <p>
            This are the some imformative & knowledgable books in which you will get upto 75% off ... Grab it Now !!</p>
            <a href="purchasebook.html" class="btn">shop now</a>
        </div>

        <div class="swiper books-slider">
            <div class="swiper-wrapper">
                <a href="#" class="swiper-slide"><img src="image/python.png" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/html1.png" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/javascript.png" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/sql.png" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/darkweb.png" alt=""></a>
                <a href="#" class="swiper-slide"><img src="image/php.png" alt=""></a>
            </div>
            <img src="image/stand.png" class="stand" alt="">
        </div>

    </div>

</section>

<!-- home section ends  -->


<!-- featured section starts  -->

<section class="featured" id="featured">

    <h1 class="heading"> <span>featured books</span> </h1>

    <div class="swiper featured-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/python.png" alt="">
                </div>
                <div class="content">
                    <h3>Python </h3>
                    <div class="price">300 &#8377; <span>500 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/java.png" alt="">
                </div>
                <div class="content">
                    <h3>Java Programming</h3>
                    <div class="price">270 &#8377; <span>400 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/html1.png" alt="">
                </div>
                <div class="content">
                    <h3>HTML / CSS</h3>
                    <div class="price">150 &#8377; <span>370 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/javascript.png" alt="">
                </div>
                <div class="content">
                    <h3>Javascript</h3>
                    <div class="price">290 &#8377; <span>470 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/nodejs.png" alt="">
                </div>
                <div class="content">
                    <h3>Node JS</h3>
                    <div class="price">250 &#8377; <span>420 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/darkweb.png" alt="">
                </div>
                <div class="content">
                    <h3>Dark Web</h3>
                    <div class="price">620 &#8377; <span>850 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/sql.png" alt="">
                </div>
                <div class="content">
                    <h3>SQL Language</h3>
                    <div class="price">300 &#8377; <span>440 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/jsp.png" alt="">
                </div>
                <div class="content">
                    <h3>JSP & Servlets</h3>
                    <div class="price">370 &#8377; <span>500 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/php.png" alt="">
                </div>
                <div class="content">
                    <h3>PHP MySQL</h3>
                    <div class="price">200 &#8377; <span>400 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                
                <div class="image">
                    <img src="image/c.png" alt="">
                </div>
                <div class="content">
                    <h3>C Language</h3>
                    <div class="price">180 &#8377; <span>300 &#8377;</span></div>
                    <a href="cart1.jsp" class="btn">add to cart</a>
                </div>
            </div>

        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>

<!-- featured section ends -->

<!-- newsletter section starts -->

<!-- newsletter section ends -->

<!-- arrivals section starts  -->

<section class="arrivals" id="arrivals">

    <h1 class="heading"> <span>new arrivals</span> </h1>

    <div class="swiper arrivals-slider">

        <div class="swiper-wrapper">

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/php.png" alt="">
                </div>
                <div class="content">
                    <h3>PHP MySQL</h3>
                    <div class="price">200 &#8377; <span>400 &#8377; </span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/aem.png" alt="">
                </div>
                <div class="content">
                    <h3>AEM </h3>
                    <div class="price">100 &#8377; <span>300 &#8377;</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/bootstrap.png" alt="">
                </div>
                <div class="content">
                    <h3>Boot Strap</h3>
                    <div class="price">120 &#8377; <span>340 &#8377;</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/c22.png" alt="">
                </div>
                <div class="content">
                    <h3>C++ Language</h3>
                    <div class="price">300 &#8377; <span>500 &#8377;</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/os.png" alt="">
                </div>
                <div class="content">
                    <h3>Operating Systems</h3>
                    <div class="price">230 &#8377; <span>400 &#8377;</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

        </div>

    </div>

    <div class="swiper arrivals-slider">

        <div class="swiper-wrapper">

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/rdbms.png" alt="">
                </div>
                <div class="content">
                    <h3>Relational Database</h3>
                    <div class="price">300 &#8377; <span>500 &#8377;</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/ps.png" alt="">
                </div>
                <div class="content">
                    <h3>Probablity & Statistics</h3>
                    <div class="price">190 &#8377; <span>400 &#8377;</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/de.png" alt="">
                </div>
                <div class="content">
                    <h3>Digital Electronics</h3>
                    <div class="price">150 &#8377; <span>300 &#8377;</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/be.png" alt="">
                </div>
                <div class="content">
                    <h3>Basic Electronics</h3>
                    <div class="price">150 &#8377; <span>300 &#8377;</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="image/linux.png" alt="">
                </div>
                <div class="content">
                    <h3>Linux </h3>
                    <div class="price">170 &#8377; <span>380 &#8377;</span></div>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </a>

        </div>

    </div>

</section>

<!-- arrivals section ends -->

<!-- deal section starts  -->

<section class="deal">

    <div class="content">
        <h3>deal of the day</h3>
        <h1>upto 50% off</h1>
        <p>Featured Books are getting upto 50% off .. just Grab It !!!</p>
        <a href="cart1.jsp" class="btn">shop now</a>
    </div>

    <div class="image">
        <img src="image/deals.jpg" alt="">
    </div>

</section>
    
<!-- deal section ends -->

<!-- reviews section starts  -->

<section class="reviews" id="reviews">

    <h1 class="heading"> <span>client's reviews</span> </h1>

    <div class="swiper reviews-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="image/boy.png" alt="">
                <h3>Aayush Panchal</h3>
                <p>The ui of the website is easily understandable </p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/girl.png" alt="">
                <h3>Rajvi Patel</h3>
                <p>The payment method is well mannered and secured</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/boy.png" alt="">
                <h3>Tanishk Patel</h3>
                <p>The ui of the website is easily understandable</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
            <div class="swiper-slide box">
                <img src="image/girl.png" alt="">
                <h3>Khushi Prajapati</h3>
                <p>The payment method is well mannered and secured</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/boy.png" alt="">
                <h3>Shrutil Thoria</h3>
                <p>The ui of the website is easily understandable</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/girl.png" alt="">
                <h3>Sakshi Patel</h3>
                <p>The payment method is well mannered and secured</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

        </div>

    </div>
    
</section>

<!-- reviews section ends -->



<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>our locations</h3>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> gujarat </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> maharashtra </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> karnataka </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> punjab </a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> publish book </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> new arrivals </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> contact us </a>
        </div>

        

        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +91 9898356789 </a>
            <a href="#"> <i class="fas fa-phone"></i> +91 9067698765 </a>
            <a href="#"> <i class="fas fa-envelope"></i> onlinebookexchange@gmail.com </a>
            <a href="#"> <i class="fas fa-envelope"></i> onlinebookexchange@hotmail.com </a>
            <img src="image/worldmap.png" class="map" alt="">
        </div>
        
    </div>

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="credit"> created by <span>Mr X</span> | all rights reserved! </div>

</section>

<!-- footer section ends -->

<!-- loader  -->


















<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script>
    searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () =>{
  searchForm.classList.toggle('active');
}

let loginForm = document.querySelector('.login-form-container');

document.querySelector('#login-btn').onclick = () =>{
  loginForm.classList.toggle('active');
}

document.querySelector('#close-login-btn').onclick = () =>{
  loginForm.classList.remove('active');
}

window.onscroll = () =>{

  searchForm.classList.remove('active');

  if(window.scrollY > 80){
    document.querySelector('.header .header-2').classList.add('active');
  }else{
    document.querySelector('.header .header-2').classList.remove('active');
  }

}

window.onload = () =>{

  if(window.scrollY > 80){
    document.querySelector('.header .header-2').classList.add('active');
  }else{
    document.querySelector('.header .header-2').classList.remove('active');
  }

  fadeOut();

}

function loader(){
  document.querySelector('.loader-container').classList.add('active');
}

function fadeOut(){
  setTimeout(loader, 4000);
}

var swiper = new Swiper(".books-slider", {
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

var swiper = new Swiper(".featured-slider", {
  spaceBetween: 10,
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    450: {
      slidesPerView: 2,
    },
    768: {
      slidesPerView: 3,
    },
    1024: {
      slidesPerView: 4,
    },
  },
});

var swiper = new Swiper(".arrivals-slider", {
  spaceBetween: 10,
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

var swiper = new Swiper(".reviews-slider", {
  spaceBetween: 10,
  grabCursor:true,
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

var swiper = new Swiper(".blogs-slider", {
  spaceBetween: 10,
  grabCursor:true,
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 9500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});</script>

</body>
</html>