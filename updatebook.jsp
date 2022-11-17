<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Book</title>
    <link rel="stylesheet" href="updatebook2.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<div class="continer">

<%
String update_message=(String)pageContext.getAttribute("update_message",pageContext.SESSION_SCOPE);
if(update_message==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Book Updated");
}
</script><% 
update_message=null;
pageContext.setAttribute("update_message", update_message,pageContext.SESSION_SCOPE);
}
 %>
 <%
String update_message3=(String)pageContext.getAttribute("update_message3",pageContext.SESSION_SCOPE);
if(update_message3==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Check book details");
}
</script><% 
update_message3=null;
pageContext.setAttribute("update_message3", update_message3,pageContext.SESSION_SCOPE);
}
 %>
    <div class="box">

        <div class="slider" <script src="./slider.css"></script>>
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
        <div class="box1">
        <form action="updatebook1.jsp">
            <div class="entry1">
                <h3>BOOK NAME</h3>
                <input type="text" name="bookname" required="required" ><br></br>
                <div class ="entry2">
                    <h3>ROW NUMBER</h3>
                    <input type="text" name="rownumber" required="required"><br></br>
                    <div class="year">
                    <h3>SELF NUMBER</h3>
                        <input type="text"name="selfnumber" required="required">
                        
                        <div class = "buttons">
                            <input type="submit" value="UPDATE">
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>