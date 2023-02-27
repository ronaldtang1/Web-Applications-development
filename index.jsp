<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="The work that I completed throughout my LIS4368 - Advanced Web Applications Development course.">
	<meta name="author" content="Ronald Tang">
	<link rel="icon" type="image/x-icon" href="favicon.ico" />

	<title>Ronald's Online Portfolio</title>

	<%@ include file="/css/include_css.jsp" %>		

<!-- Carousel styles -->
<style type="text/css">
h2
{
	margin: 0;     
	color: #666;
	padding-top: 50px;
	font-size: 52px;
	font-family: "trebuchet ms", sans-serif;    
}
.item
{
	background: #333;    
	text-align: center;
	height: 300px !important;
}
.carousel
{
  margin: 20px 0px 20px 0px;
}
.bs-example
{
  margin: 20px;
}
</style>
	
</head>
<body>
	
	<%@ include file="/global/nav_global.jsp" %>	
	
	<div class="container">
		 <div class="starter-template">
						<div class="page-header">
						<%@ include file="/global/header.jsp" %>							
						</div>

<!-- Start Bootstrap Carousel  -->
<div class="bs-example">
	<div
      id="myCarousel"
		class="carousel"
		data-interval="1000"
		data-pause="hover"
		data-wrap="true"
		data-keyboard="true"			
		data-ride="carousel">
		
    	<!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>   
       <!-- Carousel items -->
        <div class="carousel-inner">

				 <div class="active item" style="background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url(img/slide2.png) no-repeat left center; background-size: contain;">
					 <div class="container">
						 <div class="carousel-caption">
								<h3>Bitbucket Repository</h3>
							 <p class="lead">Link to Bitbucket repository for Advanced Web Applications Development (LIS4368)</p>
							 <a class="btn btn-large btn-primary" href="https://bitbucket.org/ronaldtang1/lis4368/src/master/" target="_blank">View Repository</a>
						 </div>
					 </div>
				 </div>					

         <div class="item" style="background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url(img/slide1.png) no-repeat left center; background-size: contain;">
                <div class="carousel-caption">
                  <h3>LinkedIn</h3>
                  <p>View my LinkedIn profile below.</p>
				  <a class="btn btn-large btn-primary" href="https://www.linkedin.com/in/ronald-tang-9016291b8/" target="_blank">View My LinkedIn</a>
						 <!--  <img src="img/slide2.png" alt="Slide 2">									 -->						
                </div>
            </div>

         <div class="item" style="background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url(img/slide3.png) no-repeat left center; background-size: contain;">
                <div class="carousel-caption">
                  <h3>Github</h3>
                  <p>View my Github profile below.</p>
				  <a class="btn btn-large btn-primary" href="https://github.com/ronaldtang1?tab=repositories" target="_blank">Link to Github</a>
						<!--  <img src="img/slide3.png" class="img-responsive" alt="Slide 3">							 -->								
                </div>
            </div>

        </div>
        <!-- Carousel nav -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>
<!-- End Bootstrap Carousel  -->

 	<%@ include file="/global/footer.jsp" %>

	</div> <!-- end starter-template -->
</div> <!-- end container -->

 	<%@ include file="/js/include_js.jsp" %>
	
</body>
</html>
