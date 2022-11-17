<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search By Book Date</title>
    <link rel="stylesheet" href="searchbydate.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<form action="searchbydate1.jsp">
<div class="continer">

    <div class="box">

        <div class="box1">
            <div class="entry1">
                <h3>DATE (dd/mm/yyyy)</h3>
                <input type="text" name="date" required="required"><br></br>
                    <div class = "buttons">
                        <input type="submit" value="search">
                    </div>

            </div>
        </div>
    </div>
</div>
</form>
</body>
</html>