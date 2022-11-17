<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot password</title>
    <link rel="stylesheet" href="adminforgotpass2.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>

<div class="continer">
<%
String forgot_message5=(String)pageContext.getAttribute("forgot_message5",pageContext.SESSION_SCOPE);
if(forgot_message5==null){
	out.println(" ");
}
else{
	%><script>
 {
  alert("Confirmation-password Must Be Same");
}
</script><% 
forgot_message5=null;
pageContext.setAttribute("forgot_message5", forgot_message5,pageContext.SESSION_SCOPE);
}
 %>
    <div class="box">
        <form action = "adminforgotpass3.jsp">
        <div class="box1">

            <div class="entry1">
                <h3>NEW PASSWOARD</h3>
                <input type="text" name="newpass" required="required"><br></br>
                <div class ="entry2">
                    <h3>CONFIRM-PASSWORD</h3>
                    <input type="text" name="c-pass" required="required"><br></br>
                    <div class = "buttons">
                        <input type="submit" value="CHANGE">

                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</div>
</body>
</html>