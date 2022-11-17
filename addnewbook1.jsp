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
String book_name=(request.getParameter("book_name"));
String au_name =(request.getParameter("au_name"));
String y_year=(request.getParameter("y_year"));
String book_self=(request.getParameter("book_self"));
String book_row=(request.getParameter("book_row"));
String book_id=(request.getParameter("book_id"));

Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
PreparedStatement ps= conn.prepareStatement("insert into books_info values(?,?,?,?,?,?,?,?)");
ps.setString(1,request.getParameter("book_id"));
ps.setString(2,request.getParameter("book_name"));
ps.setString(3,request.getParameter("au_name"));
ps.setString(4,request.getParameter("y_year"));
ps.setString(5,request.getParameter("book_self"));
ps.setString(6,request.getParameter("book_row"));
ps.setString(7,"yes");
ps.setString(8,"none");
ps.executeUpdate();
String adminbook_message="Book successfuly added";
pageContext.setAttribute("adminbook_message", adminbook_message,pageContext.SESSION_SCOPE);
response.sendRedirect("addnewbook.jsp");
	


%>
</body>
</html>