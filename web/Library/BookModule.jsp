<%-- 
    Document   : BookModule
    Created on : 10 Aug, 2025, 12:10:05 PM
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
    <body class="bookmodule">
        <nav class="navbar">
            <div class="logo">Librarian Home page</div>
        
            <ul>
           <li><a href="Home.jsp"> Home </a></li>
           <li><a href="SearchId.jsp">  Search Books </a></li>
           <li><a href="AddBook.jsp">    Add Books </a></li>
           <li><a href="Update.jsp">  Update Books </a></li>
           <li><a href="Delete.jsp">  Delete  Book </a></li>
              <li><a href="Home.jsp">Logout </a></li>
          
            </ul>
             <div class="menu-toggle" id="menu-toggle">&#9776;</div>
        </nav>
    </body>
</html>
