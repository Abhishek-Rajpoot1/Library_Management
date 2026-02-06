<%-- 
    Document   : Issued
    Created on : 15 Aug, 2025, 8:02:50 PM
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
    <body class="Issued">
     <nav class="navbar">
            <div class="logo">Student Home</div>
            <ul>
                <li> <a href="Home.jsp"> Home </a></li>
                <li><a href="SearchBook.jsp"> Search Book</a></li>
                <li><a href="BookIssue.jsp">  Issue Books</a></li>
                <li><a href="Issued.jsp">  Issued Books </a></li>
                <li> <a href="ReturnBook.jsp">  Return Books </a></li>
                   <li> <a href="Home.jsp"> Logout </a></li> 
            </ul>
        <div class="menu-toggle" id="menu-toggle">&#9776;</div>
        </nav>
    
        <form>
            <table cellpadding="10" cellspacing="0" border="1">
                <%
         
         out.println("<tr><td class=data ,id=Id >Student Id</td><td class=data>Student Name</td><td class=data>Student branch</td>");
         out.println("<td class=data>Book Id</td><td class=data>Book Name</td></tr>");
         
       
            String id=session.getAttribute("id").toString();
         String name=session.getAttribute("name").toString();
         DB1.DBConnect db=new DB1.DBConnect();
         db.pstmt=db.con.prepareStatement("select*from book_issue where s_id=?and s_name=?");
         db.pstmt.setString(1,id);
         db.pstmt.setString(2,name);
         db.rst=db.pstmt.executeQuery();

         
         while(db.rst.next())
         { 
         
           out.println("<tr id=data><td>"+db.rst.getString(1)+"</td><td>"+db.rst.getString(2)+"</td>");
           out.println("<td>"+db.rst.getString(3)+"</td><td>"+db.rst.getString(4)+"</td>"); 
           out.println("<td>"+db.rst.getString(5)+"</td></tr>");
            }
        
          
         %>
            </table>
           
        </form>
    
    </body>
</html>

