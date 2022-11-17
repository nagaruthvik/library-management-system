<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <title>Login Form </title>
  <link rel="stylesheet" href="loginstu2.css">

</head>
<body>
<%
String message=(String)pageContext.getAttribute("message",pageContext.SESSION_SCOPE);
if(message==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Registration Successful");
  
}
</script><% 
message=null;
pageContext.setAttribute("message", message,pageContext.SESSION_SCOPE);
}
 %>
<%
String forgot_message2=(String)pageContext.getAttribute("forgot_message2",pageContext.SESSION_SCOPE);
if(forgot_message2==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Registration Successful");
  
}
</script><% 
forgot_message2=null;
pageContext.setAttribute("forgot_message2", forgot_message2,pageContext.SESSION_SCOPE);
}
 %>
 <%
String login_message=(String)pageContext.getAttribute("login_message",pageContext.SESSION_SCOPE);
if(login_message==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Incorrect username or password");
}
</script><% 
login_message=null;
pageContext.setAttribute("login_message",login_message,pageContext.SESSION_SCOPE);
}
 %>

<form action ="loginstu1.jsp" method="post">
<div class ="continer">


  <div class="box">
  <div class="entry1">
  <h3>REGISTRATION ID</h3>
  <input type="text" name="regid" required="required">
  </div>
  <div class="entry2">
  <h3>PASSWORD</h3>
  <input type="password" name="pass" required="required">
  </div>
  <div class="buttons">
  <input type="submit" value="login">
  </div>  
  <div class="new">
  <a href="registerstudent.jsp">New student?</a>
  </div> 
  <div class="forgot">
  <a href="forgetpassstu.jsp">/Forgot password</a>
  </div>
  </div>
</div>
  
</form>

</body>
</html>