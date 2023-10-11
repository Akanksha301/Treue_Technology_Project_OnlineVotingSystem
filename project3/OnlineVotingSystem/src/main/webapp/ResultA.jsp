<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table,td{
text-align : center ;
background : #FFFAF0 ;
font-size : 20px ;
}
th{
background : grey ;
font-size : 30px ;
}
.container{

    margin-top : 400px ;
    margin-left : 500px ;
    Height : 200px ;
    width : 500px ;
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



</style>
<body>
<table border ="1" style="width : 100%">
    <tr>
             
       <th><b>Count Votes</b></th>
       <th><b>Parties</b></th>
   </tr> 
   
<%

String email = (String)request.getSession().getAttribute("email");


String Query = " select count(*) as GetVotes, elected from electiona group by elected" ;

String driver = "com.mysql.jdbc.Driver";
String Db_url = "jdbc:mysql://localhost:3306/OnlineVotingSystem";
String Db_username = "root";
String Db_password = "Create@1234";
     try{
    	 Class.forName(driver);
    	 Connection con = DriverManager.getConnection(Db_url,Db_username,Db_password);
    	 PreparedStatement ps = con.prepareStatement(Query);
		 ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			%>
			<tr> 
			   <td><b><%=rs.getInt("GetVotes") %></b></td>
			   <td><b><%=rs.getString("elected") %></b></td>
			
			</tr>
			<% 
			}
 }
 catch(Exception e){
	 
 }
 %>  
</table>

<div class = "container">
<div class = "ttitle"><h1 Style = "color : green ; font-size : 35px;">Congratulations</h1></div>
<p style = "font-size : 18px ;"> Winner of the elections is </p>
<% 
String result = " select count(*) as getVotes, elected from electiona group by elected order by getVotes desc limit 1;" ;

     try{
    	 Class.forName(driver);
    	 Connection con = DriverManager.getConnection(Db_url,Db_username,Db_password);
    	 PreparedStatement ps = con.prepareStatement(Query);
		 ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			%>
			   <h1 Style = "color : green ; font-size : 35px;"><b><%=rs.getString("elected") %></b></h1>
			
			<% 
			}
 }
 catch(Exception e){
	 
 }
%>
</div>
</body>
</html>