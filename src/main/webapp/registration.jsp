<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up </title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<input type = "hidden" id ="status" value="<%= request.getAttribute("status") %>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
					<a href="login.jsp" class="signup-image-link">Log in to existing account</a>
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" required = "required"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" required = "required" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" required = "required"/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required = "required"/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" required = "required" />
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>


	</div>

	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		alert("Account Created Successfuly, Now you can login.");
		
	
	}
	
	if(status == "invaliEmail"){
		alert("please Enter the email.");
	
	}
	
	if(status == "invaliPass"){
		alert("please Enter the password.");
	
	}
	
	if(status == "invalidMobile"){
		alert("please Enter the mobile number.");
	
	}
	
	if(status == "invalidMobileLength"){
		alert("Mobile should of 10 digit number.");
	
	}
	
	if(status == "invalidName"){
		alert("please Enter the name.");
	
	}
	
	if(status == "passNotMatch"){
		alert("Password do not matched.");
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	</script> 

</body>
</html>