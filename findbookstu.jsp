<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Find Book</title>
    <link rel="stylesheet" href="findbookstu1.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>

<div class="continer">
<%
String book_message=(String)pageContext.getAttribute("book_message",pageContext.SESSION_SCOPE);
if(book_message==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("No book found");
  
}
</script><% 
book_message=null;
pageContext.setAttribute("book_message", book_message,pageContext.SESSION_SCOPE);
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
        <form action = "findbookstu1.jsp">
        <div class="box1">

            <div class="entry1">
                <h3>BOOK NAME </h3>
                <input type="text" name="bookname" required="required"><br></br>
                <div class ="entry2">
                    <h3>AUTHOR NAME</h3>
                    <input type="text" name="bookauthor" required="required"><br></br>
                    <div class = "buttons">
                        <input type="submit" value="FIND">

                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</div>
</body>
</html>