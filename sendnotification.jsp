<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Notification</title>
    <link rel="stylesheet" href="sendnotification2.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<div class="continer">
<%
String admin_not=(String)pageContext.getAttribute("admin_not",pageContext.SESSION_SCOPE);
if(admin_not==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Message sent");
  
}
</script><% 
admin_not=null;
pageContext.setAttribute("admin_not", admin_not,pageContext.SESSION_SCOPE);
}
 %>
 <%
String admin_not1=(String)pageContext.getAttribute("admin_not1",pageContext.SESSION_SCOPE);
if(admin_not1==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Please try again later");
  
}
</script><% 
admin_not1=null;
pageContext.setAttribute("admin_not1", admin_not1,pageContext.SESSION_SCOPE);
}
 %>
 <%
String admin_not2=(String)pageContext.getAttribute("admin_not2",pageContext.SESSION_SCOPE);
if(admin_not2==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Message sent");
  
}
</script><% 
admin_not2=null;
pageContext.setAttribute("admin_not2", admin_not2,pageContext.SESSION_SCOPE);
}
 %>
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
        <form action ="sendnotification1.jsp">
        <div class="box1">

            <div class="entry1">
                <h3> REGISTRATION ID </h3>
                <input type="text" name="regid" required="required"><br></br>

                    <div class="message" >
                        <input type="text" name="message" required="required">
                        <div class="buttons">
                            <input type="submit" value="SEND">
                        </div>
                    </div>

            </div>
        </div>
        </form>
    </div>
</div>
</body>
</html>