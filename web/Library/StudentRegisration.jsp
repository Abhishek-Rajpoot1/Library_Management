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
     <script defer src="Library.js"></script>
       
    </head>
    <body class="StusentRegistration">
    <nav class="navbar">
            <div class="logo">Library</div>
            <ul>
                <li> <a href="Lib_Reg.jsp">Admin Registration</a></li>
                <li><a href="adminlogin.jsp">Admin Login</a></li>
                 <li><a href="BookList.jsp"> Book List</a></li>
                  <li> <a href="StudentRegisration.jsp"> Student Registration</a></li>
                   <li><a href="Stu_Login.jsp">Student Login</a></li>
                    
            </ul>
        <div class="menu-toggle" id="menu-toggle">&#9776;</div>
        </nav>
        <form action="../Stu_Reg">
            <h3 id="t_hadding">Student Registration</h3>
            <table cellspacing="0" cellpadding="5" border="2">
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
    
    </body>
</html>
