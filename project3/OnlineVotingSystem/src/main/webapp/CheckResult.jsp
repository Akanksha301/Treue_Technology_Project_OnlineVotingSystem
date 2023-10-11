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
.container{
margin-top : 70px ;
margin-left : 500px ;
    Height : 500px ;
    width : 500px ;
    padding-top: .8em;
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

button{
height : 50px ;
width : 400px ;
font-size : 25px ;
}
</Style>
<body>
<div class = "container" >
<h1>Results</h1><br>
 <a href = "http://localhost:8080/OnlineVotingSystem/ResultA.jsp"><button>General Election (Lok Sabha)</button></a><br><br>
 <a href = "http://localhost:8080/OnlineVotingSystem/typeb.jsp"><button>State Assembly Elections </button></a>
</div>
</body>
</html>