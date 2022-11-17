
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
String password=(request.getParameter("pass"));
Class.forName("com.mysql.cj.jdbc.Driver");
RequestDispatcher rd=null;
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
ResultSet rs =stmt.executeQuery("select * from admin_info where regid='"+regid+"'and password='"+password+"'");
if(rs.next()){
	rd=request.getRequestDispatcher("adminprofilepage.jsp");
	session.setAttribute("regid", rs.getString("regid"));
	rd.forward(request,response);
}
else{
	String adlogin_message="incorrect username or password";
	pageContext.setAttribute("adlogin_message", adlogin_message,pageContext.SESSION_SCOPE);
	response.sendRedirect("adminlogin.jsp");
}
%>
</body>
</html>