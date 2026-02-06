<%-- 
    Document   : SearchBook
    Created on : 14 Aug, 2025, 11:08:16 AM
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
    <body class="SearchBook">
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
        <form action="SearchBookConf.jsp">
                <table  cellspacing="0" cellpadding="5" border="2">
                <tr><td class="data">Enter Book Name</td><td><input type="text" name="name"></td></tr>
                <tr><td><input id="submit" type=submit ></td><td><input id="reset" type=reset value=Reset></td></tr>
            </table>   
        </form>
   
    </body>
</html>
