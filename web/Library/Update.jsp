<%-- 
    Document   : Update
    Created on : 29 Dec, 2025, 8:39:50 AM
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
    <body class="update">
         <center>
        <form action="UpdateBook.jsp">
           <h1>Welcome Books</h1>
        <header class="main">
          <a href="AdminHome.jsp"><h3>Back</h3></a>
          <a href="Home.jsp"><h3>Home</h3></a>
          <a href="SearchId.jsp"> <h3>Search Books</h3></a>
          <a href="AddBook.jsp">   <h3>Add Books</h3></a>
          <a href="Update.jsp"> <h3>Update Books</h3></a>
          <a href="Delete.jsp"> <h3>Delete  Book</h3></a>
             <a href="../LogeOut"> <h3 id="logout">Logout</h3></a>
  </header>
        <form action="Search.jsp">
            <h3 id="t_hadding">Update Book </h3>
            <table border="2" cellspacing="0" cellpading="5">
                <tr><td class="data">Enter Book Id</td><td><input type="text" name="id"></td></tr>
                <tr><td><input id="submit" type=submit value=Submit></td><td><input id="reset" type=reset value=Reset></td></tr>
            </table>
        </form>
    </center>
    </body>
</html>

