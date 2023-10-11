<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<Style>
* {
	box-sizing: border-box;
}
body {
	font-family: 'Montserrat', sans-serif;
	line-height: 1.6;
	margin: 0;
	min-height: 100vh;
}
h2,
h3,
a {
	color: #34495e;
}

a {
	text-decoration: none;
}
.container{

    Height : 500px ;
    width : 400px ;
    padding-top: .5em;
	padding-bottom: .5em;
	border: 1px solid #a2a2a2;
	background-color: #f4f4f4;
	-webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.75);
	-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.75);
	box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.75);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	text-align: center;
	justify-content: center;
}

@media (min-width: 769px) {
	.container {
		flex-direction: column;
		align-items: center;
		width: 40%;
		margin: 0 auto;
		max-width: 1150px;
}
input {
font-size : 25px ;
}
a{
align-items: left;
text-align : left ;
}

</Style>
<body>
<div class = "container">
<form action = "Login" method = "post">
<a href ="http://localhost:8080/OnlineVotingSystem/">Back</a>
<h1>Login</h1>

<input type = "text" name ="email" placeholder = "Enter Email"><br><br>
<input type = "text" name ="password" placeholder = "Enter Password"><br><br>
<input type = "submit" value = "Login" >
<input type = "Reset" value = "Reset" >
<br>
<br>
<a href ="http://localhost:8080/OnlineVotingSystem/Register.jsp">Not a user ? Register</a>
</form>
</div>
</body>
</html>