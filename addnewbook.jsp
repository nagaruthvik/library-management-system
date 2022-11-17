<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Book</title>
    <link rel="stylesheet" href="addnewbook.css">
      <link rel="stylesheet" href="Tcss.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<div class="continer">
<%
String adminbook_message=(String)pageContext.getAttribute("adminbook_message",pageContext.SESSION_SCOPE);
if(adminbook_message==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Book successfuly added");
  
}
</script><% 
adminbook_message=null;
pageContext.setAttribute("adminbook_message", adminbook_message,pageContext.SESSION_SCOPE);
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
        <form action = "addnewbook2.jsp">
        <div class="box1">
        
            <div class="entry1">
                <h3>BOOK NAME </h3>
                <input type="text" name="book_name" required="required"><br></br>
                <div class ="entry2">
                    <h3>AUTHOR NAME</h3>
                    <input type="text" name="au_name" required="required"><br></br>
                    <div class="year">
                        <h3>PUBLISHING YEAR</h3>
                        <input type="text" name="y_year" required="required">
                        <div class="book_self">
                            <h3>BOOK SELF</h3>
                            <input type="text" name="book_self" required="required">
                            <div class="book_row">
                                <h3>BOOK ROW</h3>
                                <input type="text" name="book_row" required="required">
                                <div class="book_id">
                                <h3>BOOK ID</h3>
                                <input type="text" name="book_id" required="required">
                                <div class="buttons">
                                    <input type="submit" value ="ADD" required="required">
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        </form>
    </div>
</div>
</body>
</html>