<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home page</title>
    <link rel="stylesheet" href="adminprofilepage.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<div class="continer">

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
        <div class="box1">
            <div class = "button1">
                <a href="updatebook.jsp">UPDATE BOOK DATA</a>
                <div class="button2">
                    <a href="addnewbook.jsp">ADD NEW BOOK</a>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>