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
String regid="12015726";
String date=(String)pageContext.getAttribute("date",pageContext.APPLICATION_SCOPE);

String bookname=(request.getParameter("bookname"));


Class.forName("com.mysql.cj.jdbc.Driver");
RequestDispatcher rd=null;
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
ResultSet rs =stmt.executeQuery("select book_avail from books_info where book_name='"+bookname+"'");
if(rs.next()){
	
	if(rs.getString("book_avail").equals("no")){
		String rent_message1="book rented";
		pageContext.setAttribute("rent_message1", rent_message1,pageContext.SESSION_SCOPE);
		response.sendRedirect("rentbookstu.jsp");
	}
	else{
		int result =stmt.executeUpdate("UPDATE books_info set book_avail='no',stu_taken='"+regid+"' WHERE book_name='"+bookname+"'");
		if(result>0){
			int result2 =stmt.executeUpdate("update student_info set book_tk = book_tk +1,stu_book='"+bookname+"',book_date='"+date+"' where  regid='"+regid+"'");
			if(result2>0){
				String rent_message="updated succe";
				pageContext.setAttribute("rent_message", rent_message,pageContext.SESSION_SCOPE);
				response.sendRedirect("rentbookstu.jsp");
			}
			else{
				String rent_message3="Please Try Later";
				pageContext.setAttribute("rent_message3", rent_message3,pageContext.SESSION_SCOPE);
				response.sendRedirect("rentbookstu.jsp");
			}
			
		}
		else{
			String rent_message4="Please Try Later";
			pageContext.setAttribute("rent_message4", rent_message4,pageContext.SESSION_SCOPE);
			response.sendRedirect("rentbookstu.jsp");
		}
		
	}
	
}
else{
	String rent_message2="Check The Book Details";
	pageContext.setAttribute("rent_message2", rent_message2,pageContext.SESSION_SCOPE);
	response.sendRedirect("rentbookstu.jsp");
} 



%>
</body>
</html>