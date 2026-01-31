<%-- 
    Document   : adminlogin
    Created on : 31 Jul, 2025, 6:45:01 AM
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
    <body class="adminlogin">
      <center>
         <h1>Library</h1>
         <header class="main">
            
            <a href="Lib_Reg.jsp"><h3>Admin Registration</h3></a>
             <a href="adminlogin.jsp"><h3>Admin Login</h3></a>
             <a href="BookList.jsp"> <h3>Book List</h3></a>
             <a href="StudentRegisration.jsp"> <h3>Student Registration</h3></a>
            <a href="Stu_Login.jsp"> <h3>Student Login</h3></a>
           
        </header>
        <form action="../adminlogin">
            <h3 id="t_hadding">Librarian Login</h3>
        <table cellspacing="0" cellpadding="10" border="2">
            <tr><td class="data">Librarian login Id</td><td><input type="text" name="id"></td></tr>
            <tr><td class="data">Enter Librarian Name</td><td><input type="text" name="name"></td></tr>
            <tr><td><input id="submit" type="submit" value="Submit" id="submit"></td><td><input id="reset" type="reset" value="Reset" id="reset"></td></tr>
        </table> 
        </form> 
      </center>
    </body>
</html>
