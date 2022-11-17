<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Settings</title>
    <link rel="stylesheet" href="stusettings.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
     <%@ page import = "java.sql.*" %>
</head>
<body>
<div class="continer">
<%
String u =(String) session.getAttribute("regid");

%>
<%
String settings_message2=(String)pageContext.getAttribute("settings_message2",pageContext.SESSION_SCOPE);
if(settings_message2==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Details Updated Successfully");
}
</script><% 
settings_message2=null;
pageContext.setAttribute("settings_message2", settings_message2,pageContext.SESSION_SCOPE);
}
 %>
 <%
String settings_message3=(String)pageContext.getAttribute("settings_message3",pageContext.SESSION_SCOPE);
if(settings_message3==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("please Try Again Later");
}
</script><% 
settings_message3=null;
pageContext.setAttribute("settings_message3", settings_message3,pageContext.SESSION_SCOPE);
}
 %>
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
        <form action="stusettings1.jsp">
            <div class="reg">
                <h3>REGISTRATION NUMBER</h3>
                <div class="reg1">
                <% 
                String regid=(String) pageContext.getAttribute("regid",pageContext.APPLICATION_SCOPE);
                out.println("<h2>'"+regid+"'<h2>");
                %>
                </div>
                <% 
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/lms_studentinfo","root","1234");
                Statement stmt= conn.createStatement();
                ResultSet rs =stmt.executeQuery("select * from student_info where regid='"+regid+"'");
                if(rs.next()){
                %>
                <div class="name">
                    <h3>NAME</h3>
                    <input type="text" name="name" value=<% out.print(rs.getString("username"));%> required="required">
                    <div class="pass">
                        <h3>PASSWORD</h3>
                        <input type="password" name="passw" value=<% out.print(rs.getString("password"));%> required="required">                       
                            <div class="reset">
                                <input type="submit" >
                                <div class="pic">
                                </div>
                            </div>                      
                    </div>                       
                </div>                
                <%} %>             
            </div>           
            </form>             
        </div>
    </div>
</div>
</body>
</html>