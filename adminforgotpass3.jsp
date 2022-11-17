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
String regid=(String)pageContext.getAttribute(("regid"),pageContext.APPLICATION_SCOPE);
String password=(request.getParameter("newpass"));
String cpassword=(request.getParameter("c-pass"));

if(password.equals(cpassword)){
	Class.forName("com.mysql.cj.jdbc.Driver");
	RequestDispatcher rd=null;
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
	Statement stmt= conn.createStatement();
	ResultSet rs =stmt.executeQuery("select * from admin_info where regid='"+regid+"' ");
	if(rs.next()){
		int result =stmt.executeUpdate("UPDATE admin_info set password='"+password+"' WHERE regid='"+regid+"'");
		if(result>0){
			String forgot_message2="Password updated Successfuly";
			pageContext.setAttribute("forgot_message2", forgot_message2,pageContext.SESSION_SCOPE);
			response.sendRedirect("adminlogin.jsp");
		}
		else{
			String forgot_message3="Please Try Again Later";
			pageContext.setAttribute("forgot_message3", forgot_message3,pageContext.SESSION_SCOPE);
			response.sendRedirect("adminforgotpass.jsp");
		}
	}
	else{
		
		String forgot_message4="Check Your Registration Id";
		pageContext.setAttribute("forgot_message4", forgot_message4,pageContext.SESSION_SCOPE);
		response.sendRedirect("adminforgotpass.jsp");
	}
}
else{
	String forgot_message5="Confirmation-password Must Be Same";
	pageContext.setAttribute("forgot_message5", forgot_message5,pageContext.SESSION_SCOPE);
	response.sendRedirect("adminforgotpass2.jsp");
}
%>

</body>
</html>