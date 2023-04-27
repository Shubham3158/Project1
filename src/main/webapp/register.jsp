<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register</title>
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

input[type="text"], input[type="email"], input[type="password"] {
	width: 100%;
	padding: 12px;
	margin: 8px 0;
	box-sizing: border-box;
	border: none;
	border-bottom: 1px solid blue;
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

.form-footer {
	margin-top: 10px;
	text-align: center;
}

.form-footer a {
	color: #4CAF50;
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
.message{
width: 100%;
position: relative;
margin: 40px;
display: flex;
justify-content: center;

}
.success{
font-size: 20px;
color: green;
position: absolute;
display: none;
animation:register,3s linear;
}
.failed{
font-size: 20px;
color: red;
position: absolute;
display: none;
animation:register,3s linear;

}
@keyframes register{
0%{
transform:scale(0.1);
}
50%{
transform:scale(0.5);
}
100%{
transform:scale(1);
}
}
</style>
</head>
<body>
	<header>
		<h1>Register Page</h1>
	</header>
	<nav>
		<a href="index.jsp">Home</a> <a href="login.jsp">LogIn</a> <a
			href="register.jsp">Register</a>
		<h1>ShuBhAm</h1>
	</nav>
	<div class="container">
		<div class="card">
			<h1>Sign Up</h1>
			<form action="RegistrationServlet" method="post">
				<label for="fullname">Full Name</label> <input type="text"
					id="fullname" name="fullname" required> <label for="email">Email
					Address</label> <input type="email" id="email" name="email" required>
				<label for="number">Contact Number</label> <input type="text"
					id="number" name="number" required> <label for="password">Password</label>
				<input type="password" id="password" name="password" required>
				<label for="repassword">Conform Password</label> <input
					type="password" id="repassword" name="repassword" required>
				<button type="submit" value="Submit" onclick="message()">Register</button>
			</form>
			<div class="message">
			<div id="success" class="success">You Register Successfully..</div>
			<div id="failed" class="failed">Try Again <br>Something Went Wrong</div>
			</div>
			
			<div class="form-footer">
				Already have an account? <a href="login.jsp">Login</a>
			</div>
		</div>
	</div>
	<footer>
		<p>&copy;Shubham Gade</p>
	</footer>
	<script type="text/javascript">
		function message() {
			var name= document.getElementById("fullname");
			var email= document.getElementById("email");
			var pass= document.getElementById("password");
			var num= document.getElementById("number");
			var repass= document.getElementById("repassword");
			var status=request.getAttribute("status");
			const success=document.getElementById("success");
			const failed=document.getElementById("failed");
			if (name.value===''||email.value===''||pass.value===''||num.value===''||repass.value===''||status.value==="fail") {
				failed.stle.display="block";
			}else{
				setTimeout(() =>{
					name.value='';
					email.value='';
					pass.value='';
					num.value='';
					repass.value='';
				},2000);
				
				success.style.display="block";
			}
			
		}
	</script>
</body>
</html>