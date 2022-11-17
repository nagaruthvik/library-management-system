<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Register Student</title>
    <link rel="stylesheet" href="registerstudent.css">

</head>
<body>
<form action="registerstudent2.jsp">
<div class ="continer">
<%
String message3=(String)pageContext.getAttribute("message3",pageContext.SESSION_SCOPE);
if(message3==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Check You Registartion Id");
}
 </script><% 
 message3=null;
 pageContext.setAttribute("message3",message3,pageContext.SESSION_SCOPE);
 }
  %>

 <%
String message4=(String)pageContext.getAttribute("message4",pageContext.SESSION_SCOPE);
if(message4==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("The Password and Confirmation Password Do Not Match");
}
 </script><% 
 message4=null;
 pageContext.setAttribute("message4",message4,pageContext.SESSION_SCOPE);
 }
  %>
   <%
String message5=(String)pageContext.getAttribute("message5",pageContext.SESSION_SCOPE);
if(message5==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Account alredy registerd");
}
 </script><% 
 message5=null;
 pageContext.setAttribute("message5",message5,pageContext.SESSION_SCOPE);
 }
  %>
     <%
String message6=(String)pageContext.getAttribute("message6",pageContext.SESSION_SCOPE);
if(message6==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Account alredy registerd");
}
 </script><% 
 message6=null;
 pageContext.setAttribute("message6",message6,pageContext.SESSION_SCOPE);
 }
  %>
    <div class="box">
        <div class="entry1">
            <h3>Email Id </h3>
            <input type="email" name="email" required="required"><br></br>
            <div class ="entry2">
                <h3>User Name</h3>
                <input type="text" name ="usern" required="required"><br></br>
                <div class ="entry3">
                    <h3>Registration Id </h3>
                    <input type="text" name="rid" required="required"><br></br>
                    <div class ="entry4">
                        <h3> Password </h3>
                        <input type="password" name="pass" required="required"><br></br>
                        <div class="entry5">
                            <h3>Confirm-Password </h3>
                            <input type="text" name="c-pass" required="required"><br></br>
                            <div class="verify">
                            <h3>First school name</h3>
                            <input type="text" name="f_school" required="required">
                            <div class="buttons">
                                <input type="submit" value="Register" >
                                <div class="new">
                                <a href="loginstu.jsp">Have Account?</a>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</body>

</html>