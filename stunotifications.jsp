<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Notification</title>
    <link rel="stylesheet" href="stunotifications2.css">
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
       
            <div class="message1">
            
            <%
            String regid=(String) pageContext.getAttribute("regid",pageContext.APPLICATION_SCOPE);
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
            Statement stmt= conn.createStatement();
            ResultSet rs =stmt.executeQuery("select message from student_message where regid='"+regid+"' ");
            if(rs.next()){
            	out.print("<h3>'"+rs.getString("message")+"'<h3>");
            }
            else{
            	out.print("<h3>no message from admin<h3>");
            }
            %>
             <div class="admin">
            <h3>Admin</h3>
            </div>
            </div>
                <div class="message2">
                <% 
                String regid1="all";
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
                Statement stm= con.createStatement();
                ResultSet rs1 =stm.executeQuery("select message from student_message where regid='"+regid1+"'");
                if(rs1.next()){
                	out.print("<h3>'"+rs1.getString("message")+"'<h3>");
                }
                else{
                	out.print("<h3>no message from Library<h3>");
                }
                %>
                <div class="all">
                <h3>Library</h3>
                </div>
                    <div class="message3">
                        <div class="message4">

                        </div>
                    </div>
                </div>
            
        </div>

    </div>
</div>
</body>
</html>