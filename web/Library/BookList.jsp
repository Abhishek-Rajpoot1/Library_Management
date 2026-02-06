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
                 <script defer src="Library.js"></script>

    </head>
    <body class="BookList">
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
   
    </body>
</html>

