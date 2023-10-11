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
ul {
  margin: 0;
  padding: 0;
  list-style: none;
}


h2,
h3,
a {
	color: #34495e;
}

a {
	text-decoration: none;
}



.logo {
	margin: 0;
	font-size: 1.45em;
}

.main-nav {
	margin-top: 5px;

}
.logo a,
.main-nav a {
	padding: 10px 15px;
	text-transform: uppercase;
	
	display: block;
}

.main-nav a {
	color: #34495e;
	font-size: .99em;
}

.main-nav a:hover {
	color: #718daa;
}



.header {
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
}


/* ================================= 
  Media Queries
==================================== */




@media (min-width: 769px) {
	.header,
	.main-nav {
		display: flex;
	}
	.header {
		flex-direction: column;
		align-items: center;
    	.header{
		width: 80%;
		margin: 0 auto;
		max-width: 1150px;
	}
	}

}

@media (min-width: 1025px) {
	.header {
		flex-direction: row;
		justify-content: space-between;
	}

}

.votecard{
    Margin-top : 100px ;
    Margin-left : 200px ;
    Height : 100px ;
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
}

.result{
    Margin-top : 50px ;
    Margin-left : 200px ;
    Height : 100px ;
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
}

button{
justify-content: center;
height : 50px ;
width : 200px ;
}


</Style>
<body>
<div class = "Container">
<header class="header">
<h1 class="logo"><a href="#">Online Voting System</a></h1>
<ul class="main-nav">
    <li><a href="#">Home</a></li>
    <li><a href="http://localhost:8080/OnlineVotingSystem/About.jsp">About</a></li>
    <li><a href="http://localhost:8080/OnlineVotingSystem/Register.jsp">Register</a></li>
    <li><a href="http://localhost:8080/OnlineVotingSystem/Login.jsp">Login</a></li>
    <li><a href="http://localhost:8080/OnlineVotingSystem/Logout.jsp">Logout</a></li>
</ul>
</header> 

<div class ="votecard">
<h1 class="logo">Vote Here</h1>
<a href="http://localhost:8080/OnlineVotingSystem/Vote.jsp">
    <button>Vote Here</button>
  </a>
</div>

<div class ="result">
<h1 class="logo">Check Results</h1>
<a href="http://localhost:8080/OnlineVotingSystem/CheckResult.jsp">
    <button>Check Results</button>
  </a>
</div>
</div>
</body>
</html>