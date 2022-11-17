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
String message=(request.getParameter("message"));




Class.forName("com.mysql.cj.jdbc.Driver");
RequestDispatcher rd=null;
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
ResultSet rs =stmt.executeQuery("select * from student_message where regid='"+regid+"' ");
if(rs.next()){
	int result =stmt.executeUpdate("UPDATE student_message set message='"+message+"' WHERE regid='"+regid+"'");
	if(result>0){
		String admin_not="Message Succesfuly sent";
		pageContext.setAttribute("admin_not", admin_not,pageContext.SESSION_SCOPE);
		response.sendRedirect("sendnotification.jsp");
	}
	else{
		String admin_not1="Check the registation number";
		pageContext.setAttribute("admin_not1", admin_not1,pageContext.SESSION_SCOPE);
		response.sendRedirect("sendnotification.jsp");
	}
}
else{
	PreparedStatement ps= conn.prepareStatement("insert into student_message values(?,?)");
	ps.setString(1,request.getParameter("regid"));
	ps.setString(2,request.getParameter("message"));
	ps.executeUpdate();
	String admin_not2="Message Succesfuly sent";
	pageContext.setAttribute("admin_not2", admin_not2,pageContext.SESSION_SCOPE);
	response.sendRedirect("sendnotification.jsp");
}

%>
</body>
</html>