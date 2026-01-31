<%-- 
    Document   : BookList
    Created on : 16 Aug, 2025, 10:15:32 AM
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
    <body class="BookList">
    <center>
        
            <h1>Library</h1>
              <header class="main">
            
            <a href="Lib_Reg.jsp"><h3>Admin Registration</h3></a>
             <a href="adminlogin.jsp"><h3>Admin Login</h3></a>
             <a href="BookList.jsp"> <h3>Book List</h3></a>
             <a href="StudentRegisration.jsp"> <h3>Student Registration</h3></a>
            <a href="Stu_Login.jsp"> <h3>Student Login</h3></a>
           
        </header>
            <form>
                <h3 id="t_hadding">Book List</h3>
            <table cellpadding="5" cellspacing="0" border="2">
                <%
         
         out.println("<tr><td class=data>Book Id</td><td class=data>Book Name</td>");
         out.println("<td class=data>Book Class</td><td class=data>Book Sem</td></tr>");
         
        
         DB1.DBConnect db=new DB1.DBConnect();
         db.pstmt=db.con.prepareStatement("select*from book_module");
         
         db.rst=db.pstmt.executeQuery();
         
         while(db.rst.next())
         { 
           out.println("<tr id=data><td>"+db.rst.getString(1)+"</td><td>"+db.rst.getString(2)+"</td>");
           out.println("<td>"+db.rst.getString(3)+"</td><td>"+db.rst.getString(4)+"</td>");   
            }
         %>
            </table>
           
        </form>
    </center>
    </body>
</html>

