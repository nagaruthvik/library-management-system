<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Behavior</title>
    <link rel="stylesheet" href="studentbhe3.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<div class="continer">
<%
String stu_bhe=(String)pageContext.getAttribute("stu_bhe",pageContext.SESSION_SCOPE);
if(stu_bhe==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Student Behaviour Updated");
  
}
</script><% 
stu_bhe=null;
pageContext.setAttribute("stu_bhe", stu_bhe,pageContext.SESSION_SCOPE);
}
 %>
 <%
String stu_bhe1=(String)pageContext.getAttribute("stu_bhe1",pageContext.SESSION_SCOPE);
if(stu_bhe1==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Check registation number you had enterd");
  
}
</script><% 
stu_bhe1=null;
pageContext.setAttribute("stu_bhe1", stu_bhe1,pageContext.SESSION_SCOPE);
}
 %>
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
        <form action="studentbhe1.jsp">
        <div class="box1">

            <div class="entry1">
                <h3>REGISTATION ID</h3>
                <input type="text" name="regid" required="required"><br></br>
                <div class ="entry2">
                    <h3>BEHAVIOUR</h3>
                    <input type="text"><br></br>
                        <input type="text" name="student_b" required="required">
                        <div class = "buttons">
                            <input type="submit" value="UPDATE">
                        </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</div>
</body>
</html>