<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search By Book Name</title>
    <link rel="stylesheet" href="searchbybook.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<form action="searchbybook1.jsp">
<div class="continer">

    <div class="box">

        <div class="box1">
            <div class="entry1" required="required">
                <h3>BOOK NAME</h3>
                <input type="text" name="book_name" required="required"><br></br>
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