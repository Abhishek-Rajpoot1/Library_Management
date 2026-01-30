<%-- 
    Document   : StudentRegisration
    Created on : 2 Aug, 2025, 3:14:22 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Style.css">
        <style>
            
      </style>
    </head>
    <body class="StusentRegistration">
    <center>
        <h1>Library</h1>
        <header class="main">
            <a href="Lib_Reg.jsp"><h3>Admin Registration</h3></a>
             <a href="adminlogin.jsp"><h3>Admin Login</h3></a>
             <a href="BookList.jsp"> <h3>Book List</h3></a>
             <a href="StudentRegisration.jsp"> <h3>Student Registration</h3></a>
            <a href="Stu_Login.jsp"> <h3>Student Login</h3></a>
           
        </header>
        <form action="../Stu_Reg">
            <h3 id="t_hadding">Student Registration</h3>
            <table cellspacing="0" cellpading="5" border="2">
                    <tr><td class="data">Student Id</td><td><input type="number" name="id"></td></tr>
                    <tr><td class="data">Student name</td><td><input type="text" name="name"></td></tr>
                    <tr><td class="data">Student Branch</td><td><input type="text" name="branch"></td></tr>
                    <tr><td class="data">Student Year</td><td><input type="text" name="year"></td></tr>
                    <tr><td class="data">Student Semester</td><td><input type="text" name="sem"></td></tr>
                    <tr><td class="data">Student Contact</td><td><input type="number" name="cont"></td></tr>
                    <tr><td class="data">Student Email</td><td><input type="text" name="email"></td></tr>
             <tr><td><input id="submit" type="submit" value="Submit"></td><td><input id="reset" type="reset" value="Reset"></td></tr>
            </table>        
        </form>
    </center>
    </body>
</html>
