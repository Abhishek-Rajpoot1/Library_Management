<%-- 
    Document   : BookIssue
    Created on : 14 Aug, 2025, 2:20:38 PM
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
    <body class="BookIssue_body">
       <center>
           <h1>Student Home</h1>
            <header class="main">
            <a href="Home.jsp"><h3>Home</h3> </a>
             <a href="SearchBook.jsp"><h3>Search Book</h3></a>
             <a href="BookIssue.jsp"><h3> Issue Books</h3></a>
             <a href="Issued.jsp"><h3> Issued Books</h3></a>
             <a href="ReturnBook.jsp"><h3> Return Books</h3></a>
              <a href="../LogeOut"> <h3 id="logout">Logout</h3></a>
        </header>
            <h3 id="t_hadding">Book Issue</h3>
        <form action="../BookIssue">
            <table cellspacing="0" sellpadding="5" border="2">
              
                    <tr><td class="data">Student Branch</td><td ><input  type="text" name="branch"></td></tr>
                    <tr><td class="data">Book Name</td><td><input type="text" name="bname"></td></tr>
                    <tr><td class="data">Book Id</td><td><input type="text" name="bid"></td></tr>
                    
             <tr><td><input id="submit" type="submit" value="Submit"></td><td><input id="reset" type="reset" value="Reset"></td></tr>
           
 </table>        
        </form>
    </center>
    </body>
</html>
