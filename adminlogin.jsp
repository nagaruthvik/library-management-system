<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <title>Login Form </title>
  <link rel="stylesheet" href="adminlogin2.css">

</head>
<body>


<%
String adlogin_message=(String)pageContext.getAttribute("adlogin_message",pageContext.SESSION_SCOPE);
if(adlogin_message==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Incorrect username or password");
  
}
</script><% 
adlogin_message=null;
pageContext.setAttribute("adlogin_message", adlogin_message,pageContext.SESSION_SCOPE);
}
 %>
 <form action ="adminlogin1.jsp">
 <div class ="continer">


  <div class="box">
  <div class="entry1">
  <h3>REGISTATION ID</h3>
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
  <a href="adminregister.jsp">Activate New Admin </a>
  </div> 
  <div class="forgot">
  <a href="adminforgotpass.jsp">/Forgot Password</a>
  </div>
  </div>
</div>
</form>
</body>
</html>