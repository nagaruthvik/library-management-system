<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Data</title>
    <link rel="stylesheet" href="allstudentdata3.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>

<div class="continer">

    <div class="box">
       
         <div class="slider">
            <div class="buttons1">
                <a href="adminprofilepage.jsp">HOME</a>
                <ion-icon name="home-outline"></ion-icon>
                <div class = "buttons2">
                    <a href="allstudentdata.jsp">STUDENT DATA</a>
                    <ion-icon name="person-outline"></ion-icon>
                    <div class ="buttons3">
                        <a href="logout.jsp">LOGOUT</a>
                        <ion-icon name="log-out-outline"></ion-icon>
                        <div class="notification">
                            <a href="sendnotification.jsp">SEND_MESSAGE</a>
                            <ion-icon name="chatbubble-ellipses-outline"></ion-icon>
                            <div class="profile">
                                <a href="studentbhe.jsp">ADD_COMPLAINT</a>
                               <ion-icon name="phone-portrait-outline"></ion-icon>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="regid">
        <a href="searchbyregid.jsp">SEARCH BY REGISTATION ID</a>
        <div class="DATE">
        <a href="searchbydate.jsp">SEARCH BY BOOK DATE </a>
        </div>
        <div class="BOOK">
        <a href="searchbybook.jsp">SEARCH BY BOOK NAME </a>
        </div>
        </div>
 <div class="tabel">   
<table border="1"  >
<tr style="background-color: #004445;color:white;font-weight:bold;height:100px;"  >
<td>REGISTATION ID</td>
<td>USER NAME</td>
<td>EMAIL-ID</td>
<td>BOOKS TAKEN</td>
<td>BOOK NAME</td>
<td>BOOK TAKEN DATE</td>
<td>BEHAVIOUR</td>

</tr>

<%

Class.forName("com.mysql.cj.jdbc.Driver");
RequestDispatcher rd=null;
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
Statement stmt= conn.createStatement();
ResultSet rs =stmt.executeQuery("select regid,username,emaild,book_tk,stu_book,book_date,stu_b from student_info ");
while(rs.next()){
	%>
	<tr style="height:100px;">
	<td style="background-color: white;"><%=rs.getString(1) %></td>
	<td style="background-color: white;"><%=rs.getString(2) %></td>
	<td style="background-color: white;"><%=rs.getString(3) %></td>
	<td style="background-color: white;"><%=rs.getString(4) %></td>
	<td style="background-color: white;"><%=rs.getString(5) %></td>
	<td style="background-color: white;"><%=rs.getString(6) %></td>
	<td style="background-color: white;"><%=rs.getString(7) %></td>
	</tr>
<%
}

%>

</table>
</div>
 </div>   
</div>
</body>
</html>
