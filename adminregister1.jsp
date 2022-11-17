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

String rid=(request.getParameter("regid"));
String pass=(request.getParameter("pass"));
String cpassword=(request.getParameter("c-pass"));
String fschool=(request.getParameter("f_school"));

if(pass.equals(cpassword)){
	Class.forName("com.mysql.cj.jdbc.Driver");
	RequestDispatcher rd=null;
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
	Statement stmt= conn.createStatement();
	ResultSet rs =stmt.executeQuery("select * from admin_info where regid='"+rid+"' ");
	if(rs.next()){
		int result =stmt.executeUpdate("UPDATE admin_info set password='"+pass+"', fir_school='"+fschool+"' WHERE regid='"+rid+"'");
		if(result>0){
			String admin_message="you had succesfuly registed";
			pageContext.setAttribute("admin_message",admin_message,pageContext.SESSION_SCOPE);
			response.sendRedirect("adminlogin.jsp");
			
		}
		else{
			out.println("<h1>incorrect<h1>");
		}
	}
	else{
		
		String admin_message3="check your id ";
		pageContext.setAttribute("admin_message3", admin_message3,pageContext.SESSION_SCOPE);
		response.sendRedirect("adminregister.jsp");
	}
}
else{
	String admin_message4="password and confirm password must be same";
	pageContext.setAttribute("admin_message4", admin_message4,pageContext.SESSION_SCOPE);
	response.sendRedirect("adminregister.jsp");
}

%>

</body>
</html>