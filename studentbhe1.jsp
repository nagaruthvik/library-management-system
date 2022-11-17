<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String regid=(request.getParameter("regid"));
String student_b=(request.getParameter("student_b"));

Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
int result =stmt.executeUpdate("UPDATE student_info set stu_b='"+student_b+"' WHERE regid='"+regid +"'");
if(result>0){
	String stu_bhe="Student Behaviour Updated";
	pageContext.setAttribute("stu_bhe",stu_bhe,pageContext.SESSION_SCOPE);
	response.sendRedirect("studentbhe.jsp");
}
else{
	String stu_bhe1="Check registation number you had enterd";
	pageContext.setAttribute("stu_bhe1",stu_bhe1,pageContext.SESSION_SCOPE);
	response.sendRedirect("studentbhe.jsp");
}
 
%>
</body>
</html>