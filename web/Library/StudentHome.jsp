<%-- 
    Document   : StudentHome
    Created on : 1 Aug, 2025, 7:15:46 AM
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
    <body>
         <nav class="navbar">
            <div class="logo">Student Home</div>
            <ul>
                <li> <a href="Home.jsp"> Home </a></li>
                <li><a href="SearchBook.jsp"> Search Book</a></li>
                <li><a href="BookIssue.jsp">  Issue Books</a></li>
                <li><a href="Issued.jsp">  Issued Books </a></li>
                <li> <a href="ReturnBook.jsp">  Return Books </a></li>
                   <li> <a href="Home.jsp"> Logout </a></li> 
            </ul>
        <div class="menu-toggle" id="menu-toggle">&#9776;</div>
        </nav>
    
    </body>
</html>
