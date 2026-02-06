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
    </head>
    <body class="bookmodule">
         <center>
        <form action="UpdateBook.jsp">
           <h1>Librarian Home page</h1>
        <header class="main">
            <a href="AdminHome.jsp"><h3>Back</h3></a>
          <a href="Home.jsp"><h3>Home</h3></a>
          <a href="SearchId.jsp"> <h3>Search Books</h3></a>
          <a href="AddBook.jsp">   <h3>Add Books</h3></a>
          <a href="Update.jsp"> <h3>Update Books</h3></a>
          <a href="Delete.jsp"> <h3>Delete  Book</h3></a>
             <a href="../LogeOut"> <h3 id="logout">Logout</h3></a>
  </header>
        
      
    </center>
    </body>
</html>
