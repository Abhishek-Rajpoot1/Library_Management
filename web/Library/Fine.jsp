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
         
    </head>
    <body class="Fine">
       <center>
        <h1>Student Home</h1>
            <header class="main">
            <a href="Home.jsp"><h3>Home</h3> </a>
             <a href="SearchBook.jsp"><h3>Search Book</h3></a>
             <a href="BookIssue.jsp"><h3> Issue Books</h3></a>
             <a href="Issued.jsp"><h3> Issued Books</h3></a>
             <a href="ReturnBook.jsp"><h3> Return Books</h3></a>
              <a href="Home.jsp"> <h3 id="logout">Logout</h3></a>
        </header>
        <form action="../Fine">
            <h3 id="t_hadding">Submit Fine</h3>
            <table border="2" cellspacing="0" cellpading="5">
                <tr><td class="data">Scanne this QR Code </td><td><img src="Images/scanner.jpg" height="100px" width="100px"> <p class="data">  You can Use : 9235778753</p></td></tr>
                <tr><td class="data">Enter Name </td><td><input type="text" name="name"></td></tr>
                <tr><td class="data">Enter course </td><td><input type="text" name="course"></td></tr>
                <tr><td class="data">Enter sem</td><td><input type="number" name="sem"></td></tr>
                <tr><td class="data">Enter Amount</td><td><input type="number" name="amt"></td></tr>
                 <tr><td><input type="submit" value="Submit" id="submit"></td><td><input id="reset" type="reset" value="Reset"></td></tr>
            </table>
        </form>
    </center>
    </body>
</html>
