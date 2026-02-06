<%-- 
    Document   : Fine
    Created on : 7 Sep, 2025, 9:39:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fine Page</title>
        <link rel="stylesheet" href="Style.css">
        <script defer src="Library.js"></script>
    </head>
    <body class="Fine">
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
        <form action="../Fine">
            <h3 id="t_hadding">Submit Fine</h3>
            <table border="2" cellspacing="0" cellpadding="5">
                <tr><td class="data">Scanne this QR Code </td><td><img src="Images/scanner.jpg" height="100px" width="100px"> <p class="data">  You can Use : 9235778753</p></td></tr>
                <tr><td class="data">Enter Name </td><td><input type="text" name="name"></td></tr>
                <tr><td class="data">Enter course </td><td><input type="text" name="course"></td></tr>
                <tr><td class="data">Enter sem</td><td><input type="number" name="sem"></td></tr>
                <tr><td class="data">Enter Amount</td><td><input type="number" name="amt"></td></tr>
                 <tr><td><input type="submit" value="Submit" id="submit"></td><td><input id="reset" type="reset" value="Reset"></td></tr>
            </table>
        </form>
  
    </body>
</html>
