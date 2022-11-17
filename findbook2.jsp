<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Find Book</title>
    <link rel="stylesheet" href="findbook3.css">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<div class="continer">
<%String book_name=(String) pageContext.getAttribute("book_name",pageContext.SESSION_SCOPE);
String book_row=(String) pageContext.getAttribute("book_row",pageContext.SESSION_SCOPE);
String book_aur=(String) pageContext.getAttribute("book_aur",pageContext.SESSION_SCOPE);
String book_self=(String) pageContext.getAttribute("book_self",pageContext.SESSION_SCOPE);
String book_avail=(String) pageContext.getAttribute("book_avail",pageContext.SESSION_SCOPE);%>
    <div class="box">

        <div class="box1">
            <div class="book_name">
                <h3>BOOK NAME</h3>
                <%out.print("<h4>'"+book_name+"'</h4>"); %>
            </div>
            <div class="book_self">
                <h3>BOOK AUTHOR</h3>
                <%out.print("<h4>'"+book_aur+"'</h4>"); %>
            </div>
            <div class="book_row">
            <h3>BOOK SELF NUMBER</h3>
                <%out.print("<h4>'"+book_self+"'</h4>"); %>
            </div>
            <div class="book_avil">
                <h3>BOOK AVILIBILTY</h3>
                <%out.print("<h4>'"+book_avail+"'</h4>"); %>
            </div>
        </div>
    </div>
   
    	<%
    	String ab="1";
    	if(book_row.equals(ab)){
    		%>
    		<style>
    	.self_box2 {
   position: absolute;
    width: 330px;
    height: 130px;
    right:10px;
    
    top:20px;
    animation: blinker 1.5s linear infinite;
    background-color: grey;

}
@keyframes blinker {
    50% {
        opacity: 50%;
    }
}
    	</style>
    	
    		<% 
    	}
    	%>
    	<%
    	String bc="2";
    	if(book_row.equals(bc)){
    		%>
    		<style>
    	.self_box3 {
    position: absolute;
    width: 330px;
    height: 130px;
    right:1px;
   
    top:150px;
    animation: blinker 1.5s linear infinite;
    background-color: grey;

}
@keyframes blinker {
    50% {
        opacity: 50%;
    }
}
    	</style>
    	
    		<% 
    	}
    	%>
    	<%
    	String cd="3";
    	if(book_row.equals(cd)){
    		%>
    		<style>
    	.self_box4 {
   position: absolute;
    width: 330px;
    height: 130px;
    right:1px;
    
    top:140px;
    animation: blinker 1.5s linear infinite;
    background-color: grey;

}
@keyframes blinker {
    50% {
        opacity: 50%;
    }
}
    	</style>
    	
    		<% 
    	}
    	%>

    <div class="self_box">
        <div class="self_box1">
            <div class="self_box2">
                <div class="self_box3">
                    <div class="self_box4">


                    </div>

                </div>

            </div>

        </div>
    </div>
     
</div>
</body>
</html>