<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<%
String regid=(String) pageContext.getAttribute("regid",pageContext.APPLICATION_SCOPE);

String name=(request.getParameter("name"));
String pass=(request.getParameter("passw"));
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
int result =stmt.executeUpdate("update student_info set username='"+name+"' , password='"+pass+"' where regid='"+regid+"'");
if(result>0){
	String settings_message2="Details Updated Successfully";
	pageContext.setAttribute("settings_message2", settings_message2,pageContext.SESSION_SCOPE);
	response.sendRedirect("stusettings.jsp");
	
}
else{
	String settings_message3="please Try Again Later";
	pageContext.setAttribute("settings_message3", settings_message3,pageContext.SESSION_SCOPE);
	response.sendRedirect("stusettings.jsp");
} %>
</body>
</html>