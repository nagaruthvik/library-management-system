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
String regid=(request.getParameter("regid"));
String fschool=(request.getParameter("fschool"));
Class.forName("com.mysql.cj.jdbc.Driver");
RequestDispatcher rd=null;
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
ResultSet rs =stmt.executeQuery("select * from admin_info where regid='"+regid+"'and fir_school='"+fschool+"'");
if(rs.next()){
	
	pageContext.setAttribute("regid", regid,pageContext.APPLICATION_SCOPE);
	
	response.sendRedirect("adminforgotpass2.jsp");
	
}
else{
	String forgot_message1="incorrect registation number or school name";
	pageContext.setAttribute("forgot_message1",forgot_message1,pageContext.SESSION_SCOPE);
	response.sendRedirect("adminforgotpass.jsp");
} 
%>
</body>
</html>