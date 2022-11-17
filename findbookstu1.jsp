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
String bookname=(request.getParameter("bookname"));
String bookauthor=(request.getParameter("bookauthor"));
Class.forName("com.mysql.cj.jdbc.Driver");
RequestDispatcher rd=null;
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
ResultSet rs =stmt.executeQuery("select * from books_info where book_name='"+bookname+"'and book_aur='"+bookauthor+"'");
if(rs.next()){
	String book_name =rs.getString("book_name");
	String book_row=rs.getString("book_row");
	String book_aur=rs.getString("book_aur");
	String book_self =rs.getString("book_self");	
	String book_avail =rs.getString("book_avail");
	pageContext.setAttribute("book_name", book_name,pageContext.SESSION_SCOPE);
	pageContext.setAttribute("book_row", book_row,pageContext.SESSION_SCOPE);
	pageContext.setAttribute("book_self", book_self,pageContext.SESSION_SCOPE);
	pageContext.setAttribute("book_avail", book_avail,pageContext.SESSION_SCOPE);
	pageContext.setAttribute("book_aur", book_aur,pageContext.SESSION_SCOPE);
	response.sendRedirect("findbook2.jsp");
	
}
else{
	String book_message="No book found";
	pageContext.setAttribute("book_message", book_message,pageContext.SESSION_SCOPE);
	response.sendRedirect("findbookstu.jsp");
} 
%>
</body>
</html>