<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookMyShow</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://kit.fontawesome.com/f30fac2c61.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Catamaran:wght@200&family=Courgette&family=Edu+TAS+Beginner:wght@700&family=Lato:wght@300;900&family=Mukta:wght@700&family=Mulish:wght@300&family=Open+Sans&family=PT+Sans:ital,wght@1,700&family=Poppins:wght@300&family=Raleway:wght@100&family=Roboto+Condensed:wght@700&family=Roboto+Slab&family=Roboto:wght@300&family=Source+Sans+Pro:wght@300&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<style>
header{
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(images/7.jpg);
	height: 100vh;
	background-size: cover;
	background-position: center;
	min-height: 200px;
	}
footer{
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(images/8.jpg);
	height: 101.5vh;
	background-size: cover;
	background-position: center;
	min-height: 200px;
}
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.container{
    width: 80%;
    height: 80vh;
    margin: auto;
    position: relative;
}

.container .image{
    display: none;
}

.container .image img{
    width: 100%;
    height: 80vh;
    object-fit: cover;
    border-radius: 15px;
    overflow: hidden;
}

.container .button{
    position: absolute;
    top: 50%;
    left: 0;
    width: 100%;
    display: flex;
    justify-content: space-between;
    z-index: 5;
}

.container .button a{
    width: 40px;
    height: 40px;
    text-align: center;
    line-height: 40px;
    vertical-align: middle;
    align-items: center;
    cursor: pointer;
    color: white;
    background: rgba(0, 0, 0, 0.8);
    font-size: 20px;
    user-select: none;
}

.container .button .prev{
    border-radius: 0 5px 5px 0;
}

.container .button .next{
    border-radius: 5px 0 0 5px;
}

.dots{
    text-align: center;
    position: absolute;
    bottom: 8px;
    left: 45%;
    background: rgba(0, 0, 0, 0.8);
    padding: 5px 10px;
    height: 30px;
    border-radius: 15px;

}

.dot{
    cursor: pointer;
    height: 20px;
    width: 20px;
    border-radius: 50%;
    background: #bbb;
    display: inline-block;
    margin: 0 2px;
}

.active, .dot:hover{
    background: white;
}

</style>
<script>

        var imageno =1;
        displayimg(imageno);

        function nextimg(n){
            displayimg(imageno += n)
        }

        function currentSlide(n){
            displayimg(imageno = n)
        }

        function displayimg(n){
            var i;
            var image = document.getElementsByClassName("image");
            var dots = document.getElementsByClassName("dot");

            if(n > image.length){
                imageno = 1;
            }

            if(n < 1){
                imageno = image.length;
            }

            for(i=0; i < image.length; i++){
                image[i].style.display = "none";
            }

            for(i=0; i < dots.length; i++){
                dots[i].className = dots[i].className.replace(" active", "");
            }

            image[imageno - 1].style.display ="block";
            dots[imageno - 1].className += " active";

        }

    </script> 
    <body style="height:1500px"> 
<header>
		<nav class="navbar navbar-expand-sm  navbar-dark fixed-top">  
  <a class="navbar-brand" href="#"><img src="images/2.jpg" width="100" height="50"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </a>  
  <ul class="navbar-nav navbar-right>  
   <li class="nav-item">  
      <a class="nav-link" href="index">   Home</a>  
    </li>  

     <li class="nav-item">  
      <a class="nav-link" href="contact">Contact   
      </a></li>
      <li class="nav-item">  
      <a class="nav-link" href=" category ">   Category</a>  
    </li>
      
    </li>  
    <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search for movies!" aria-label="Search">
          <button class="btn btn-outline-light" type="submit">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
            </svg>
          </button>
        </form>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <li class="nav-item">  
      <a class="nav-link" href="signup"> 
       
      SignUp</a>  
    </li> 
    
    <li class="nav-item";float:right>  
      <a class="nav-link" href="usrlogin">Login </a>  
    </li> 
    
  </ul>  
</nav>  
		 	
		 	  <div class="container">
        <div class="image" style="position: relative";>
            <img src="images/fighter.jpg" style="position: absolute; left: 0px; top: 90px;">
        </div>
        <div class="image" style="position: relative"; >
            <img src="images/shaitaan.jpg" style="position: absolute; left: 0px; top: 90px;">
        </div>
        <div class="image" style="position: relative";>
            <img src="images/shiddat.jpg" style="position: absolute; left: 0px; top: 90px;">
        </div>
      <div class="image" style="position: relative";>
            <img src="images/gravity.jpg" style="position: absolute; left: 0px; top: 90px;">
        </div>

        <div class="button">
            <a onclick="nextimg(-1)" class="prev">&#10094;</a>
            <a onclick="nextimg(1)" class="next">&#10095;</a>
        </div>


    </div>
    </header>
		 	 <footer
            class="text-center text-lg-start text-white" id="footer"
            >
      <!-- Grid container -->
      
     
      <div class="container p-4 pb-0">
        <!-- Section: Links -->
        <section class="text-sm-start">
          <!--Grid row-->
          <div class="row">
          
            <!-- Grid column -->

            <hr class="w-100 clearfix d-md-none" />

            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
              <h6 class="text-uppercase mb-4 font-weight-bold">MOVIE LIST</h6>
              <br>
               Movie's Showing Now
               <ul>
            <li>Article 370</li>
            <li>Dune:Part 2</li>
            <li>Fighter</li>
            <li>Shaitaan</li> 
            <li>Animal</li>
        </ul>
              <br>
                Upcoming Movies
          <ul>
            <li>Yodha</li>
            <li>Singham Again</li>
            <li>Pushpa 2</li>
            <li>Venom 3</li> 
            <li>Welcome 3</li>
        </ul>
              <br>
                Countries
         <ul>
            <li>Indonesia</li>
            <li>India</li>
            <li>UAE</li>
            <li>Singapore</li> 
        </ul>

            </div>
            <!-- Grid column -->

            <hr class="w-100 clearfix d-md-none" />

            <!-- Grid column -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
              <h6 class="text-uppercase mb-4 font-weight-bold">
                Useful links
              </h6>
              <br>
                Your Account
              <br>
                Reviews
              <br>
                Help

            </div>

            <!-- Grid column -->
            <hr class="w-100 clearfix d-md-none" />

            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
              <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
              <br><i class="fas fa-home mr-3"></i> BookMyShow, Kolkata, India <br>
              <br><i class="fas fa-envelope mr-3"></i> BMS@gmail.com <br>
              <br><i class="fas fa-phone mr-3"></i> + 91 9909625497
              <br><i class="fas fa-print mr-3"></i> + 91 9123314706
            </div>
            <!-- Grid column -->
          </div>
          <!--Grid row-->
        </section>
        <!-- Section: Links -->

        <hr class="my-3">

        <!-- Section: Copyright -->
        <section class="p-3 pt-0">
          <div class="row d-flex align-items-center">
            <!-- Grid column -->
            <div class="col-md-7 col-lg-8 text-center text-md-start">
              <!-- Copyright -->
              <div class="p-3">
                &#169 2024 Copyright :
                <a class="text-white" href="https://mdbootstrap.com/"
                  >BookMyShow.com</a
                  >
              </div>
              <!-- Copyright -->
            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-5 col-lg-4 ml-lg-0 text-center text-md-end">
              <!-- Facebook -->
              <a class="text-white" href="https://www.facebook.com/BookMyShowIN/events/">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
              </svg> </a> &nbsp

              <!-- Twitter -->
              <a class="text-white" href="https://twitter.com/bookmyshow?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
              </svg> </a> &nbsp

              <!-- Google -->
              <a class="text-white" href="https://in.bookmyshow.com/">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z"/>
              </svg> </a> &nbsp

              <!-- Instagram -->
              <a class="text-white" href="https://www.instagram.com/bookmyshowin/?hl=en">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
              </svg> </a> &nbsp

              <!--GitHub-->
              <a class="text-white" href="https://github.com/topics/bookmyshow">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-github" viewBox="0 0 16 16">
                <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
              </svg></a>

            <!-- Grid column -->
          </div>
        </section>
        <!-- Section: Copyright -->
      </div>
      <!-- Grid container -->
    </footer>
    <!-- Footer -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>