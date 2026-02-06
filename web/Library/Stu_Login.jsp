<%-- 
    Document   : Stu_Login
    Created on : 15 Aug, 2025, 9:21:34 PM
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
    <body class="Stu_Login" >
   
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
        <form action="../Stu_login">
            <h3 id="t_hadding">Student Login</h3>
            <table cellspacing="0" cellpadding="0" border=".02">
                <tr><td class="data">Enter login Id </td><td class="input"><input type="text" name="id"></td></tr>
            <tr><td class="data">Enter Student Name</td><td><input type="text" name="name"></td></tr>
            <tr><td><input id="submit" type="submit" value="Submit" ></td><td><input id="reset" type="reset" value="Reset" ></td></tr>
            </table> 
        </form> 
      
    </body>
</html>
