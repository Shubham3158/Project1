
<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title> 
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image: url("");
	background-color: #FADBD8;
}

header {
	background-color: #333;
	color: #fff;
	padding: 10px;
	text-align: center;
}

nav {
	background-color: #f2f2f2;
	border: 1px solid #ccc;
	display: flex;
}

nav a {
	color: #333;
	padding: 20px;
	text-decoration: none;
	text-transform: uppercase;
	text-decoration: none;
}
nav h1{
margin-top: 15px;
margin-left: 700px;

}

nav a:hover {
	background-color: #9B59B6;
	color: #fff;
	border-radius: 10px;
}

section {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	padding: 20px;
}

article {
	background-color: #f2f2f2;
	border: 1px solid #ccc;
	margin: 10px;
	padding: 10px;
	text-align: center;
	width: 300px;
}

h1 {
	margin: 0;
}

div {
	margin-left: 500px;
	margin-top: 100px;
}
</style>
</head>
<body>
	<header>
		<h1>WEL-COME</h1>
	</header>
	<nav>
		<a href="index.jsp">Home</a>  <a href="contact.jsp">Contact</a>
		<a href="login.jsp">LogIn</a> <a href="register.jsp">Register</a>
		<h1>ShuBhAm</h1>
	</nav>
	<div>
		<h1>ShuBhAm</h1>
		<form action="https://www.google.com/search?" >
			<br> <input type="search" name="d" style="height: 30px; width: 300px;"> <input
				type="submit" value="Serch" name="d" style="margin-left: 30px; background-color: #AED581">
		</form>
	</div>
	<section>
		<article>
			<iframe src="https://www.netflix.com/in/">Netflix</iframe>
		</article>
		<article>
			<iframe src="https://indianexpress.com/">indianExpress</iframe>
		</article>
		<article>
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30778478.487853557!2d60.815258973939656!3d19.664096242942332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2sin!4v1682529966856!5m2!1sen!2sin"
				width="300" height="150" style="border: 0;" allowfullscreen=""
				loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</article>
	</section>
	<footer>
		<p>&copy;Shubham Gade</p>
	</footer>
</body>
</html>