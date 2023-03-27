<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<input type = "hidden" id ="status" value="<%= request.getAttribute("status") %>">
 
<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
						<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
					<div class="signin-form">
						<h2 class="form-title">Log in</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" required = "required" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>

	</div>
	
						
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
		alert("Wrong username or password");
	
	}
	
	else if(status == "invalidEmail"){
		alert("Pls Enter Email");
	
	}
	
	else if(status == "invalidPassword"){
		alert("Pls Enter password");
	
	}
	</script>
</body>
</html>