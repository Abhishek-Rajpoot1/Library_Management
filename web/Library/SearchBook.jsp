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
    </head>
    <body class="SearchBook">
        <center>
            
        <form action="SearchBookConf.jsp">
        <h1>Student Home</h1>
        
        <header class="main">
            <a href="Home.jsp"><h3>Home</h3> </a>
             <a href="SearchBook.jsp"><h3>Search Book</h3></a>
             <a href="BookIssue.jsp"><h3> Issue Books</h3></a>
             <a href="Issued.jsp"><h3> Issued Books</h3></a>
             <a href="ReturnBook.jsp"><h3> Return Books</h3></a>
             <a href="../LogOut"> <h3 id="logout">Logout</h3></a>
        </header>
            <table border="2" cellspacing="0" cellpading="5">
                <tr><td class="data">Enter Book Name</td><td><input type="text" name="name"></td></tr>
                <tr><td><input id="submit" type=submit ></td><td><input id="reset" type=reset value=Reset></td></tr>
            </table>   
        </form>
    </center>
    </body>
</html>
