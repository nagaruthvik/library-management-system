<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 <link rel="stylesheet" href="allstudentdata.css">
</head>
<body>
<center>
<div class="table">
<table border="1"  >
<tr style="background-color: #004445;color:white;font-weight:bold;height:100px;"  >
<td>reistartion id</td>
<td>username</td>
<td>no of books taken</td>
<td>book taken date</td>
<td>book taken</td>
<td>student bheavoiur</td>

</tr>

<%
String regid=request.getParameter("regid");
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
ResultSet rs =stmt.executeQuery("select regid,username,book_tk,book_date,stu_book,stu_b from student_info where regid='"+regid+"'");
while(rs.next()){
	%>
	<tr style="height:100px;">
	<td style="background-color: white;"><%=rs.getString(1) %></td>
	<td style="background-color: white;"><%=rs.getString(2) %></td>
	<td style="background-color: white;"><%=rs.getString(3) %></td>
	<td style="background-color: white;"><%=rs.getString(4) %></td>
	<td style="background-color: white;"><%=rs.getString(5) %></td>
	<td style="background-color: white;"><%=rs.getString(6) %></td>
	</tr>
<%
}

%>

</table>
</center> 
</body>
</html>