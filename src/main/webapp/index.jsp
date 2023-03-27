<!-- 
		if(session.getAttribute("name")==null)
		{
			response.sendRedirect("index.jsp");
		}

     -->


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>User Page</title>
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<a class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a>
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<h1 class="masthead-heading text-uppercase mb-0">
				Hello <%=session.getAttribute("name")%> ,
			</h1>
			<p class="masthead-subheading font-weight-light mb-0">you're are
				successfully logged in.</p>
		</div>
	</header>
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; himanshu 2023</small>
		</div>
	</div>

</body>
</html>