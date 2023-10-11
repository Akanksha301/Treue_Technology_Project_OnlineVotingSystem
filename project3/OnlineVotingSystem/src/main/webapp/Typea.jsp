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

    Height : 750px ;
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

table, th, td {
  border: 1px solid black;
  border-style: groove;
  border-color: #a2a2a2;
  text-align: center;
  padding: 10px;
  height : 100% ;
}
input{
background : blue ;
height : 50px;
width : 100px ;
}

</style>
<body>
<div class = "container" >
<form action ="VoteA" method ="post">
<table style="width:100% ;">
  <tr>
    <th>Political Parties</th>
    <th>Click to Vote</th>
  </tr>
  <tr>
    <td>Bharatiya Janata Party</td>
    <td><input type ="submit" name = "voteParty" value ="BJP"></td>
  </tr>
  <tr>
    <td>Indian National Congress</td>
    <td><input type ="submit" name = "voteParty" value ="INC"></td>
  </tr>
  <tr>
    <td>Communist Party of India (Marxist)</td>
    <td><input type ="submit" name = "voteParty" value ="CPI"></td>
  </tr>
  <tr>
    <td>Aam Aadmi Party </td>
    <td><input type ="submit" name = "voteParty"  value ="AAP"></td>
  </tr>
  <tr>
    <td>Bahujan Samaj Party</td>
    <td><input type ="submit" name = "voteParty" value ="BSP"></td>
  </tr>
  <tr>
    <td>National People's Party</td>
    <td><input type ="submit" name = "voteParty" value ="NPP"></td>
  </tr>
</table>
</form>
</div>
</body>
</html>