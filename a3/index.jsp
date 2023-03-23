<!DOCTYPE html>
<html lang="en">
<head>
<!--
"Time-stamp: <Sat, 01-02-21, 19:40:00 Eastern Standard Time>"
//-->
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="This page shows a Petstore Database along with the required SQL files.">
	<meta name="author" content="Ronald Tang">
	<link rel="icon" href="favicon.ico">

	<title>LIS4368 - Assignment 3</title>

	<%@ include file="/css/include_css.jsp" %>		
	
	<style>
		body {
			background-image: linear-gradient(to right, #222, #AAF, #222);
		}
	</style>

</head>
<body>

<!-- display application path -->
<% //= request.getContextPath()%>
	
<!-- can also find path like this...<a href="${pageContext.request.contextPath}${'/a5/index.jsp'}">A5</a> -->

	<%@ include file="/global/nav.jsp" %>	

	<div class="container">
		<div class="starter-template">
					<div class="page-header">
						<%@ include file="global/header.jsp" %>
					</div>

					<b>Petstore Database (Entity Relationship Diagram):</b><br />
					<img src="img/erd.png" class="img-responsive center-block" alt="A3 ERD" />

					<b>Petstore Data:</b><br />
					<img src="img/petstore.png" class="img-responsive center-block" alt="petstore" />

					<b>Pet Data:</b><br />
					<img src="img/pet.png" class="img-responsive center-block" alt="pet" />

					<b>Customer Data:</b><br />
					<img src="img/customer.png" class="img-responsive center-block" alt="customer" />

					<br /> <br />
					<b>MySQL Workbench and SQL Files:</b><br />
					<a href="docs/a3.mwb">Petstore MySQL Workbench File</a>
				<br />
					<a href="docs/a3.sql">Petstore SQL File</a>				

	<%@ include file="/global/footer.jsp" %>

	</div> <!-- end starter-template -->
 </div> <!-- end container -->

 	<%@ include file="/js/include_js.jsp" %>		
 
</body>
</html>
