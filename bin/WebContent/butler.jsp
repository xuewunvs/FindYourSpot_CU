<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
  String usr = (String) session.getAttribute("usrName");
  String checkRoom = (String) session.getAttribute("checkRoom");
  if(usr==null){
	  request.getRequestDispatcher("signin.html").forward(request,response);
  }  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<style>
/* 	  body {background-image: url("img/library-op.jpg");} */
.navbar {
	background-image: url("img/library-10.jpg");
}
</style>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/round-about.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<!-- Navigation -->

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h1 style="color: white;">Find a Spot</h1>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li></li>
				</ul>
				<p style="text-align: right; font-size: 160%; color: white;">
				<%if(checkRoom == null){%>
					Hi! <%=usr%>
				<%}
				else{%>		
					Hi! <%=usr%>, Current Check Room: <%=checkRoom%>
				<%}%>
					<br> <a href="signoutServer" style="color: white;"><small><ins>Log Out</ins></small></a>
				</p>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

</body>
</html>