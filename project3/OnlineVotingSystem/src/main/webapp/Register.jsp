<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
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

    Height : Cover ;
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
font-size :20px ;
}
</style>
<body>
<div class = "container">
<form action = "Register" method ="post">
<h1>Register</h1><br>
 Name : <input type = "text" name ="name" placeholder = "Enter Name"><br><br>
 Fathers Name : <input type = "text" name ="fname" placeholder = "Enter Fathers Name"><br><br>
Sir Name : <input type = "text" name ="sname" placeholder = "Enter Sir Name"><br><br>
Email : <input type = "text" name ="email" placeholder = "Enter Email"><br><br>
Contact : <input type = "text" name ="contact" placeholder = "Enter Contact"><br><br>
Gender : <input type = "text" name ="gender" placeholder = "Enter Gender"><br><br>
Date Of Birth : <input type = "Date" name ="dob" placeholder = "Enter Date-of-Birth"><br><br>
Voting Card No : <input type = "text" name ="vno" placeholder = "Enter Voting Card No"><br><br>
Enter Password : <input type = "text" name ="password" placeholder = "Enter Password"><br><br>
<input type = "submit" value = "Register" >
<br><br>
<a href ="http://localhost:8080/OnlineVotingSystem/Login.jsp">Already register ? Login</a>
</form>
</div>
</body>
</html>