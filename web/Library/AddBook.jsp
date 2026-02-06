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
        <script defer src="Library.js"></script>
    </head>
    <body class="addBook">
      <nav class="navbar">
            <div class="logo">Librarian Home page</div>
       
            <ul>
           <li><a href="Home.jsp"> Home </a></li>
           <li><a href="SearchId.jsp">  Search Books </a></li>
           <li><a href="AddBook.jsp">    Add Books </a></li>
           <li><a href="Update.jsp">  Update Books </a></li>
           <li><a href="Delete.jsp">  Delete  Book </a></li>
              <li><a href="Home.jsp"> Logout </a></li>
          
            </ul>
             <div class="menu-toggle" id="menu-toggle">&#9776;</div>
        </nav>
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
   
    </body>
</html>
