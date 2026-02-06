<%-- 
    Document   : AdminHome
    Created on : 1 Aug, 2025, 6:51:09 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Style.css">
        <script defer src="Library.js"></script>
    </head>
    <body class="adminhome">
    
       <nav class="navbar">
            <div class="logo">Librarian Home page</div>
            <ul>
                <li><a href="Home.jsp"><h3>Home</a></li>
                <li><a href="BookModule.jsp"> <h3>Books</a></li>
                 <li><a href="Home.jsp"> <h3 id="logout">Logout</a></li>
                 
            </ul>
        <div class="menu-toggle" id="menu-toggle">&#9776;</div>
        </nav> 
   
    </body>
</html>
