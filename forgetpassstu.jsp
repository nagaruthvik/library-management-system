<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="forgetpassstu.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>

<div class="continer">
<%
String forgot_message1=(String)pageContext.getAttribute("forgot_message1",pageContext.SESSION_SCOPE);
if(forgot_message1==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("incorrect registation number or school name");
}
</script><% 
forgot_message1=null;
pageContext.setAttribute("forgot_message1", forgot_message1,pageContext.SESSION_SCOPE);
}
 %>
 <%
String forgot_message3=(String)pageContext.getAttribute("forgot_message3",pageContext.SESSION_SCOPE);
if(forgot_message3==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Book Rented Succesful");
}
</script><% 
forgot_message3=null;
pageContext.setAttribute("forgot_message3", forgot_message3,pageContext.SESSION_SCOPE);
}
 %>
 <%
String forgot_message4=(String)pageContext.getAttribute("forgot_message4",pageContext.SESSION_SCOPE);
if(forgot_message4==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Check Your Registration Id");
}
</script><% 
forgot_message4=null;
pageContext.setAttribute("forgot_message4", forgot_message4,pageContext.SESSION_SCOPE);
}
 %>
    <div class="box">
        <form action = "forgetpassstu1.jsp">
        <div class="box1">

            <div class="entry1">
                <h3>REGISTRATION NUMBER</h3>
                <input type="text" name="regid" required="required"><br></br>
                <div class ="entry2">
                    <h3>FIRST SCHOOL NAME</h3>
                    <input type="text" name="fschool" required="required"><br></br>
                    <div class = "buttons">
                        <input type="submit" value="CHECK">

                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</div>
</body>
</html>