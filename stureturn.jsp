<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Return book</title>
    <link rel="stylesheet" href="stureturn1.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<div class="continer">
<%
String u =(String) session.getAttribute("regid");

%>
<%
String return_message=(String)pageContext.getAttribute("return_message",pageContext.SESSION_SCOPE);
if(return_message==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Book was Alredy Returend");
  
}
</script><% 

return_message=null;
pageContext.setAttribute("return_message", return_message,pageContext.SESSION_SCOPE);

}
 %>
 <%
String return_message1=(String)pageContext.getAttribute("return_message1",pageContext.SESSION_SCOPE);
if(return_message1==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Book Returned Successfully");
}
</script><% 
return_message1=null;
pageContext.setAttribute("return_message1", return_message1,pageContext.SESSION_SCOPE);
}
 %>
  <%
String return_message2=(String)pageContext.getAttribute("return_message2",pageContext.SESSION_SCOPE);
if(return_message2==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("please Try Again Later");
}
</script><% 
return_message2=null;
pageContext.setAttribute("return_message2", return_message2,pageContext.SESSION_SCOPE);
}
 %>
  <%
String return_message3=(String)pageContext.getAttribute("return_message3",pageContext.SESSION_SCOPE);
if(return_message3==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("please Try Again Later");
}
</script><% 
return_message3=null;
pageContext.setAttribute("return_message3", return_message3,pageContext.SESSION_SCOPE);
}
 %>
 <%
String return_message4=(String)pageContext.getAttribute("return_message4",pageContext.SESSION_SCOPE);
if(return_message4==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Check Book Details");
}
</script><% 
return_message4=null;
pageContext.setAttribute("return_message4", return_message4,pageContext.SESSION_SCOPE);
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
        <form action="stureturn1.jsp">
        <div class="box1">
            <div class="entry1">
                <h3>BOOK NAME</h3>
                <input type="text" name="book_name" required="required"><br></br>
                <div class ="entry2">
                    <h3>AUTHOR NAME</h3>
                    <input type="text" name="book_aur" required="required"><br></br>
                    <div class = "buttons">
                        <input type="submit" value="return">
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</div>
</body>
</html>