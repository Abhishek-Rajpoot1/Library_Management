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
          
    </head>
    <body class="Issued">
    <center>
        <form>
            <h1>Student Home</h1>
             <header class="main">
            <a href="Home.jsp"><h3>Home</h3> </a>
             <a href="SearchBook.jsp"><h3>Search Book</h3></a>
             <a href="BookIssue.jsp"><h3> Issue Books</h3></a>
             <a href="Issued.jsp"><h3> Issued Books</h3></a>
             <a href="ReturnBook.jsp"><h3> Return Books</h3></a>
              <a href="../LogeOut"> <h3 id="logout">Logout</h3></a>
        </header>
            
            <table cellpadding="5" cellspacing="0" border="2">
                <%
         
         out.println("<tr><td class=data>Student Id</td><td class=data>Student Name</td><td class=data>Student branch</td>");
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
    </center>
    </body>
</html>

