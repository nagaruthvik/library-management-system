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
String email=(request.getParameter("email"));
String usern=(request.getParameter("usern"));
String rid=(request.getParameter("rid"));
String pass=(request.getParameter("pass"));
String cpassword=(request.getParameter("c-pass"));
String fschool=(request.getParameter("f_school"));
int book_tk=0;
String reg_co="yes";
if(pass.equals(cpassword)){
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
	Statement stmt= conn.createStatement();
	ResultSet rs =stmt.executeQuery("select reg_co from student_info where regid='"+rid+"' ");
	if(rs.next()){
		String op=rs.getString("reg_co");
		if(op!="yes" && op==null){
			int result =stmt.executeUpdate("update student_info set emaild='"+email+"',username='"+usern+"',password='"+pass+"' where regid='"+rid+"'");
			if(result>0){
				int result2 = stmt.executeUpdate("update student_info set fir_school='"+fschool+"',reg_co='"+reg_co+"',book_tk='"+book_tk+"' where regid='"+rid+"'");
				String message="you had succesfuly registed";
				pageContext.setAttribute("message", message,pageContext.SESSION_SCOPE);
				response.sendRedirect("loginstu.jsp");
			}
			else{
				out.print("invalid");
			}
			
		}
		else{
			String message5="account alredy registred";
			pageContext.setAttribute("message5", message5,pageContext.SESSION_SCOPE);
			response.sendRedirect("registerstudent.jsp");
		}
	}
	else{
		String message3="check your id ";
		pageContext.setAttribute("message3", message3,pageContext.SESSION_SCOPE);
		response.sendRedirect("registerstudent.jsp");
	}
}
else{
	String message4="password and confirm password must be same";
	pageContext.setAttribute("message4", message4,pageContext.SESSION_SCOPE);
	response.sendRedirect("registerstudent.jsp");
}

%>

</body>
</html>