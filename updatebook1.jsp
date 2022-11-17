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
Class.forName("com.mysql.cj.jdbc.Driver");
String bookname=(request.getParameter("bookname"));
String bookrow=(request.getParameter("rownumber"));
String bookself=(request.getParameter("selfnumber"));
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
int result2 =stmt.executeUpdate("update books_info set book_row = '"+bookrow+"',book_self='"+bookself+"' where  book_name='"+bookname+"'");
if(result2>0){
	String update_message="Book Updated";
	pageContext.setAttribute("update_message", update_message,pageContext.SESSION_SCOPE);
	response.sendRedirect("updatebook.jsp");
}
else{
	String update_message3="Check the book details you had enterd";
	pageContext.setAttribute("update_message3",update_message3,pageContext.SESSION_SCOPE);
	response.sendRedirect("updatebook.jsp");
}
%>
</body>
</html>