<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<style>
body {
	margin: 0;
	padding: 0;
	background-color: #f1f1f1;
	font-family: Arial, sans-serif;
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	margin-top: 50px;
}

.card {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	padding: 20px;
	max-width: 400px;
	width: 100%;
	border: 3px solid blue;
	
}

h1 {
	margin-top: 0;
	text-align: center;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 12px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 1px solid blue;
	border-radius: 4px;
}

button[type="submit"] {
	background-color: #4CAF50;
	color: #fff;
	padding: 12px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

button[type="submit"]:hover {
	background-color: #45a049;
}

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

nav h1 {
	margin-top: 15px;
	margin-left: 700px;
}

nav a:hover {
	background-color: #9B59B6;
	color: #fff;
	border-radius: 10px;
}
</style>
</head>
<body>
	<header>
		<h1>Login Page</h1>
	</header>
	<nav>
		<a href="index.jsp">Home</a> 
		<a href="login.jsp">LogIn</a> <a
			href="register.jsp">Register</a>
		<h1>ShuBhAm</h1>
	</nav>
	<div class="container">
		<div class="card">
			<h1>Login</h1>
			<form action="LoginServlet" method="post">
				<label for="email">Email Id</label> <input type="text"
					id="email" name="email" required> <label
					for="password">Password</label> <input type="password"
					id="password" name="password" required>
				<button type="submit" value="submit">Login</button>
				<p>Create an Account <a href="register.jsp">click hare</a></p>
			</form>
		</div>
	</div>
	<footer>
		<p>&copy;Shubham Gade</p>
	</footer>
</body>
</html>