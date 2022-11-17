<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Registration Page</title>
    <link rel="stylesheet" href="adminregister.css">

</head>
<body>
<form action="adminregister1.jsp">
<div class ="continer">
<%
String admin_message3=(String)pageContext.getAttribute("admin_message3",pageContext.SESSION_SCOPE);
if(admin_message3==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Check You Registartion Id");
}
</script><% 
}
 %>
 <%
String admin_message4=(String)pageContext.getAttribute("admin_message4",pageContext.SESSION_SCOPE);
if(admin_message4==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("The Password and Confirmation Password Do Not Match");
}
</script><% 
}
 %>
    <div class="box">
        <div class="entry1">
            <h3>Registration Id </h3>
            <input type="text" name="regid" required="required"><br></br>
            <div class ="entry2">
                <h3>Password</h3>
                <input type="text" name="pass" required="required"><br></br>
                <div class ="entry3">
                    <h3>Confrim-Password</h3>
                    <input type="text" name="c-pass" required="required" ><br></br>
                            <div class="buttons">
                                <input type="submit" value="Register">
                                <div class="new">
                                    <a href="adminlogin.jsp">Have Account?</a>   
                                    </div> 
                                                                  
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <div class="verify">
                            <h3>First School Name</h3>
                            <input type="text" name="f_school">
                                </div>
    </div>
</form>

</body>
</html>