<!DOCTYPE html>
<html lang="en">
<head>
<!--
"Time-stamp: <Sat, 12-19-20, 17:39:11 Eastern Standard Time>"
//-->
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="My online portfolio that illustrates skills acquired while working through various project requirements.">
	<meta name="author" content="Ronald Tang">
	<link rel="icon" href="favicon.ico">

	<title>LIS4368 - Project1</title>

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
					
					<form id="add_customer_form" method="post" class="form-horizontal" action="#">

						<div class="form-group">
							<label class="col-sm-4 control-label">FName:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="fname" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-4 control-label">LName:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="lname" />
							</div>
						</div>		

						<div class="form-group">
							<label class="col-sm-4 control-label">Street:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="street" />
							</div>
						</div>			

						<div class="form-group">
							<label class="col-sm-4 control-label">City:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="city" />
							</div>
						</div>	

						<div class="form-group">
							<label class="col-sm-4 control-label">State:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="state" />
							</div>
						</div>		

						<div class="form-group">
							<label class="col-sm-4 control-label">Zip:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="zip" />
							</div>
						</div>												
						<div class="form-group">
							<label class="col-sm-4 control-label">Phone:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="phone" />
							</div>
						</div>						

						<div class="form-group">
							<label class="col-sm-4 control-label">Email:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="email" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-4 control-label">Balance:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="balance" />
							</div>
						</div>			

						<div class="form-group">
							<label class="col-sm-4 control-label">Total Sales:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="total_sales" />
							</div>
						</div>					

						<div class="form-group">
							<label class="col-sm-4 control-label">Notes:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" maxlength="255" name="notes" />
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-6 col-sm-offset-3">
								<button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
							</div>
						</div>
					</form>

	<%@ include file="/global/footer.jsp" %>

	</div> <!-- end starter-template -->
 </div> <!-- end container -->

 	<%@ include file="/js/include_js.jsp" %>		
 
<script type="text/javascript">
$(document).ready(function() {
	$('#add_customer_form').formValidation({
			message: 'This value is not valid',
			icon: {
					valid: 'fa fa-check',
					invalid: 'fa fa-times',
					validating: 'fa fa-refresh'
			},
			fields: {
				fname: {
							validators: {
									notEmpty: {
											message: 'First name required'
									},
									stringLength: {
											min: 1,
											max: 15,
											message: 'First name no more than 15 characters'
									},
									regexp: {
										//http://www.regular-expressions.info/
										//http://www.regular-expressions.info/quickstart.html
										//http://www.regular-expressions.info/shorthand.html
										//http://stackoverflow.com/questions/13283470/regex-for-allowing-alphanumeric-and-space
										//alphanumeric (also, "+" prevents empty strings):
										regexp: /^[a-zA-Z\-]+$/,
										message: 'First name can only contain letters and hyphens.'
									},									
							},
					},
				lname: {
							validators: {
									notEmpty: {
											message: 'Last name required'
									},
									stringLength: {
											min: 1,
											max: 30,
											message: 'Last name no more than 30 characters'
									},
									regexp: {
										regexp: /^[a-zA-Z\-]+$/,
										message: 'Last name can only contain letters and hyphens'
									},									
							},
					},
					street: {
							validators: {
									notEmpty: {
											message: 'Street required'
									},
									stringLength: {
											min: 1,
											max: 30,
											message: 'Street no more than 30 characters'
									},
									regexp: {
										regexp: /^[a-zA-Z0-9,\-\s\.]+$/,
										message: 'Street must only contain letters, numbers, commas, hyphens, or periods'
									},									
							},
					},
					city: {
							validators: {
									notEmpty: {
											message: 'City required'
									},
									stringLength: {
											min: 1,
											max: 30,
											message: 'City no more than 30 characters'
									},
									regexp: {
										regexp: /^[a-zA-Z0-9\-\s]+$/,
										message: 'City can only contain letters, numbers, hyphens, and space character (29 Palms)'
									},									
							},
					},
					state: {
							validators: {
									notEmpty: {
											message: 'State required'
									},
									stringLength: {
											min: 2,
											max: 2,
											message: 'State must be two characters'
									},
									regexp: {
										regexp: /^[a-zA-Z]+$/,
										message: 'State can only contain letters'
									},									
							},
					},
					zip: {
							validators: {
									notEmpty: {
											message: 'Zip required, only numbers'
									},
									stringLength: {
											min: 5,
											max: 9,
											message: 'Zip must be 5, and no more than 9 digits'
									},
									regexp: {
										regexp: /^[0-9]+$/,
										message: 'Zip can only contain numbers'
									},									
							},
					},
					phone: {
							validators: {
									notEmpty: {
											message: 'Phone required, including area code, only numbers'
									},
									stringLength: {
											min: 10,
											max: 10,
											message: 'Phone must be 10 digits'
									},
									regexp: {
										regexp: /^[0-9]+$/,
										message: 'Phone can only contain numbers'
									},									
							},
					},
					
					email: {
							validators: {
									notEmpty: {
											message: 'Email address is required'
									},
									/*
									//built-in e-mail validator, comes with formValidation.min.js
									//using regexp instead (below)
									emailAddress: {
											message: 'Must include valid email address'
									},
									*/
								
									stringLength: {
											min: 1,
											max: 100,
											message: 'Email no more than 100 characters'
									},
									regexp: {
									regexp: /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/,
										message: 'Must include valid email'
									},																		
							},
					},
					balance: {
							validators: {
									notEmpty: {
											message: 'Balance is required'
									},
									stringLength: {
											min: 1,
											max: 7,
											message: 'Balance can be no more than 6 digits, including decimal point'
									},
									regexp: {
										regexp: /^[0-9\.]+$/,
										message: 'Balance can only contain numbers and decimal point'
									},									
							},
					},
					total_sales: {
							validators: {
									notEmpty: {
											message: 'Total sales is required'
									},
									stringLength: {
											min: 1,
											max: 7,
											message: 'Total sales can be no more than 6 digits, including decimal point'
									},
									regexp: {
										regexp: /^[0-9\.]+$/,
										message: 'Total sales can only contain numbers and decimal point'
									},									
							},
					},
			}
	});
});
</script>

</body>
</html>