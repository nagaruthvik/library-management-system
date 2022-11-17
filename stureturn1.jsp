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
String regid=(String) pageContext.getAttribute("regid",pageContext.APPLICATION_SCOPE);
String bookname=(request.getParameter("book_name"));
Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
ResultSet rs =stmt.executeQuery("select * from books_info where book_name='"+bookname+"'");
if(rs.next()){
	
	if(rs.getString("book_avail").equals("yes")){
		
		String return_message="Book was Alredy Returend";
		pageContext.setAttribute("return_message", return_message,pageContext.SESSION_SCOPE);
		response.sendRedirect("stureturn.jsp");
		
		
		
	
	}
	else{
		int result =stmt.executeUpdate("UPDATE books_info set book_avail='yes' WHERE book_name='"+bookname+"'");
		if(result>0){
			int result1 =stmt.executeUpdate("UPDATE student_info set stu_book='none' WHERE regid='"+regid+"'");
			if(result1>0){
				
				String return_message1="Book Returned Successfully";
				pageContext.setAttribute("return_message1", return_message1,pageContext.SESSION_SCOPE);
				response.sendRedirect("stureturn.jsp");
			}
			else{
				
				String return_message2="Please Try Again Later";
				pageContext.setAttribute("return_message2", return_message2,pageContext.SESSION_SCOPE);
				response.sendRedirect("stureturn.jsp");
			}
		}
		else{
			
			String return_message3="Please Try Again Later";
			pageContext.setAttribute("return_message3", return_message3,pageContext.SESSION_SCOPE);
			response.sendRedirect("stureturn.jsp");
		}
		
	}
	
	
}
else{
	String return_message4="Check Book details";
	pageContext.setAttribute("return_message4", return_message4,pageContext.SESSION_SCOPE);
	response.sendRedirect("stureturn.jsp");
} 



%>
</body>
</html>