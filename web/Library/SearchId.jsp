<%-- 
    Document   : SearchId
    Created on : 13 Aug, 2025, 11:33:19 AM
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
    <body class="searchId">
        <nav class="navbar">
            <div class="logo">Librarian Home page</div>
        
            <ul>
           <li><a href="Home.jsp"> Home </a></li>
           <li><a href="SearchId.jsp">  Search Books </a></li>
           <li><a href="AddBook.jsp">    Add Books </a></li>
           <li><a href="Update.jsp">  Update Books </a></li>
           <li><a href="Delete.jsp">  Delete  Book </a></li>
              <li><a href="../LogeOut"> Logout </a></li>
          
            </ul>
             <div class="menu-toggle" id="menu-toggle">&#9776;</div>
        </nav>
         <form action="UpdateBook.jsp">
            <h3 id="t_hadding">Search Book </h3>
            <table border="2" cellspacing="0" cellpadding="5">
                <tr><td class="data">Enter Book Id</td><td><input type="text" name="id"></td></tr>
                <tr><td><input id="submit" type=submit value=Submit></td><td><input id="reset" type=reset value=Reset></td></tr>
            </table>
        </form>
  
    </body>
</html>
