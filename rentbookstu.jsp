<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Return Book</title>
    <link rel="stylesheet" href="rentbookstu1.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>

<div class="continer">
<%
String rent_message=(String)pageContext.getAttribute("rent_message",pageContext.SESSION_SCOPE);
if(rent_message==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Book Rented Succesful");
}
</script><% 
rent_message=null;
pageContext.setAttribute("rent_message", rent_message,pageContext.SESSION_SCOPE);
}
 %>
 <%
String rent_message1=(String)pageContext.getAttribute("rent_message1",pageContext.SESSION_SCOPE);
if(rent_message1==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Book Was Alredy Rented");
}
</script><% 
rent_message1=null;
pageContext.setAttribute("rent_message1", rent_message1,pageContext.SESSION_SCOPE);
}
 %>
  <%
String rent_message2=(String)pageContext.getAttribute("rent_message2",pageContext.SESSION_SCOPE);
if(rent_message2==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Check The Book Details");
}
 </script><% 
 rent_message2=null;
 pageContext.setAttribute("rent_message2", rent_message2,pageContext.SESSION_SCOPE);
 }
  %>
   <%
String  rent_message3=(String)pageContext.getAttribute(" rent_message3",pageContext.SESSION_SCOPE);
if( rent_message3==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Please Try Later");
}
 </script><% 
 rent_message3=null;
 pageContext.setAttribute("rent_message3", rent_message3,pageContext.SESSION_SCOPE);
 }
  %>
    <%
String rent_message4=(String)pageContext.getAttribute("rent_message4",pageContext.SESSION_SCOPE);
if(rent_message4==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Please Try Later");
}
 </script><% 
 rent_message4=null;
 pageContext.setAttribute("rent_message4", rent_message4,pageContext.SESSION_SCOPE);
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
        <form action = "rentbookstu1.jsp">
        <div class="box1">

            <div class="entry1">
                <h3>BOOK NAME </h3>
                
                <input type="text" name="bookname" required="required"><br></br>
                <div class ="entry2">
                    <h3>AUTHOR NAME</h3>
                    <input type="text" name="author_name" required="required"><br></br>
                   <div class="year">
                       <h3>PUBLISHING YEAR</h3>
                       <input type="text" name ="p_year" required="required">
                       <div class = "buttons">
                           <input type="submit" value="RENT">
                       </div>
                   </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</div>
<%

         Date dNow = new Date( );
         SimpleDateFormat ft = new SimpleDateFormat ("dd/MM/yyyy");
         String date= ft.format(dNow)  ;
         pageContext.setAttribute("date",date,pageContext.APPLICATION_SCOPE);
%>
</body>
</html>