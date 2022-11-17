<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Info</title>
    <link rel="stylesheet" href="stuinfo.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    
</head>
<body>
<div class="continer">

    <div class="box">

        <div class="slider">
            <div class="buttons1">
                <a href="profilestudent.jsp">HOME</a>
                <ion-icon name="home-outline"></ion-icon>
                <div class = "buttons2">
                    <a href="stusettings.jsp">SETTINGS</a>
                    <ion-icon name="settings-outline"></ion-icon>
                    <div class ="buttons3">
                        <a href="logout.jsp">LOGOUT</a>
                        <ion-icon name="log-out-outline"></ion-icon>
                        <div class="notification">
                            <a href="stunotifications.jsp">NOTIFICATION</ion-icon> </a>
                            <ion-icon name="notifications-outline"></ion-icon>
                            <div class="profile">
                                <a href="stuinfo.jsp">PROFILE</a>
                                <ion-icon name="person-circle-outline"></ion-icon>
                                <div class="return">
                                <a href="stureturn.jsp">RETURN</a>
                                <ion-icon name="book-outline"></ion-icon>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="box1">
            <div class="reg">
                <h3>REGISTRATION NUMBER</h3>               
            </div>
            <div class="regid">
            <%
            String regid=(String)pageContext.getAttribute("regid",pageContext.APPLICATION_SCOPE);
            Class.forName("com.mysql.cj.jdbc.Driver");
            RequestDispatcher rd=null;
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
            Statement stmt= conn.createStatement();
            ResultSet rs =stmt.executeQuery("select * from student_info where regid='"+regid+"'");
            if(rs.next()){
            	out.print("<h3>'"+rs.getString("regid")+"'<h3>");
            }
            else{
            	out.println("<h3> <h3>"); 
            }
            %>
            </div>
                <div class="name">
                    <h3>NAME</h3>
                    <div class="username">
            <%
            Statement stmt1= conn.createStatement();
            ResultSet rs1 =stmt1.executeQuery("select * from student_info where regid='"+regid+"'");
            if(rs1.next()){
            	out.print("<h3>'"+rs.getString("username")+"'<h3>");
            }
            else{
            	out.println("<h3> <h3>"); 
            }
            %>
            </div>
                </div>
                    <div class="emaild">
                        <h3>EMAIL-ID </h3>
                        <div class="email">
            <%
            Statement stmt2= conn.createStatement();
            ResultSet rs2 =stmt2.executeQuery("select * from student_info where regid='"+regid+"'");
            if(rs2.next()){
            	out.print("<h3>'"+rs.getString("emaild")+"'<h3>");
            }
            else{
            	out.println("<h3> <h3>"); 
            }
            %>
            </div>
                    </div>
                        <div class="comp">
                            <h3> BEHAVIOUR</h3>
                            <div class="bhe">
            <%
            Statement stmt3= conn.createStatement();
            ResultSet rs3 =stmt3.executeQuery("select * from student_info where regid='"+regid+"'");
            if(rs3.next()){
            	out.print("<h3>'"+rs.getString("stu_b")+"'<h3>");
            }
            else{
            	out.println("<h3>  <h3>"); 
            }
            %>
            </div>
                        </div>
                        <div class="book">
                            <h3>BOOKS TAKEN</h3>
                            <div class="book1">
            <%
            Statement stmt4= conn.createStatement();
            ResultSet rs4 =stmt4.executeQuery("select * from student_info where regid='"+regid+"'");
            if(rs4.next()){
            	out.print("<h3>'"+rs.getString("book_tk")+"'<h3>");
            }
            else{
            	out.println("<h3>  <h3>"); 
            }
            %>
            </div>
                        </div>
                        <div class="pic">
                        
                        </div>

    </div>
    </div>
</div>
</div>
</body>
</html>