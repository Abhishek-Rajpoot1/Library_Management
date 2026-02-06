<%-- 
    Document   : ReturnBook
    Created on : 14 Aug, 2025, 3:29:41 PM
    Author     : Admin
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Style.css">
    </head>
    <body class="ReturnBook">
       <center>
        <h1>Student Home</h1>
            <header class="main">
            <a href="Home.jsp"><h3>Home</h3> </a>
             <a href="SearchBook.jsp"><h3>Search Book</h3></a>
             <a href="BookIssue.jsp"><h3> Issue Books</h3></a>
             <a href="Issued.jsp"><h3> Issued Books</h3></a>
             <a href="Fine.jsp"><h3> Submit Fine</h3></a>
              <a href="Home.jsp"> <h3 id="logout">Logout</h3></a>
        </header>
        <form action="../BookReturn">
            <h3 id="t_hadding">Book Return</h3>
            <table cellspacing="0" sellpadding="5" border="2">
                <tr><td class="data">Book Id</td><td><input type="text" name="id"></td></tr>
                    <tr><td class="data">Book name</td><td><input type="text" name="name"></td></tr>
                    <tr><td class="data">Book Class</td><td><input type="text" name="class"></td></tr>
                    <tr><td class="data">Book Semester</td><td><input type="text" name="sem"></td></tr>
                    
                    
             <tr><td><input id="submit" type="submit" value="Submit"></td><td><input id="reset" type="reset" value="Reset"></td></tr>
            </table>        
        </form>
    </center>
    </body>
</html>
