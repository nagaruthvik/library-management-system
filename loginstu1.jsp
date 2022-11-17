<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.sql.*" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<% java.util.Date d = new java.util.Date();
                out.println("<h3>'"+d.toString()+"'<h3>"); %>
<%


String regid=(request.getParameter("regid"));
String password=(request.getParameter("pass"));
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
ResultSet rs =stmt.executeQuery("select * from student_info where regid='"+regid+"'and password='"+password+"'");
if(rs.next()){
	
	pageContext.setAttribute("regid",regid,pageContext.APPLICATION_SCOPE);
	response.sendRedirect("profilestudent.jsp");
}
else{
	String login_message="incorrect username or password";
	pageContext.setAttribute("login_message", login_message,pageContext.SESSION_SCOPE);
	response.sendRedirect("loginstu.jsp");
}
%>
</body>
</html>