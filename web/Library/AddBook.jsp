<%-- 
    Document   : AddBook
    Created on : 11 Aug, 2025, 9:35:59 PM
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
    <body class="addBook">
         <center>
        <!--<form action="UpdateBook.jsp">-->
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
        <form action="../AddBook">
            <h3 id="t_hadding">Add Book</h3>
           <table cellpadding="5" cellspacing="0" border="2">
                <tr><td class="data">Enter Book Id</td><td><input type="text" name="id"></td></tr>
                <tr><td class="data">Enter Book Name</td><td><input type="text" name="name"></td></tr>
                <tr><td class="data">Enter Book Class</td><td><input type="text" name="class"></td></tr>
                <tr><td class="data">Enter Book Sem</td><td><input type="text" name="sem"></td></tr>
                <tr><td><input type="submit" value="Submit" id="submit"></td><td><input id="reset" type="reset" value="Reset"></td></tr>
            </table>
                
        </form>
    </center>
    </body>
</html>
