<%-- 
    Document   : SearchBookConf
    Created on : 15 Aug, 2025, 5:44:01 PM
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
    <body class="seachconf">
    <center>
        <form>
            <h1>Student Home</h1>
             <header class="main">
            <a href="Home.jsp"><h3>Home</h3> </a>
             <a href="SearchBook.jsp"><h3>Search Book</h3></a>
             <a href="BookIssue.jsp"><h3> Issue Books</h3></a>
             <a href="Issued.jsp"><h3> Issued Books</h3></a>
             <a href="ReturnBook.jsp"><h3> Return Books</h3></a>
             <a href="../LogOut"> <h3 id="logout">Logout</h3></a>
        </header>
            
            <table cellpadding="5" cellspacing="0" border="2">
                <%
         
         out.println("<tr><td class=data>Book Id</td><td class=data>Book Name</td>");
         out.println("<td class=data>Book Class</td><td class=data>Book Sem</td></tr>");
         
         String name=request.getParameter("name");
         DB1.DBConnect db=new DB1.DBConnect();
         db.pstmt=db.con.prepareStatement("select*from book_module where b_name=?");
         db.pstmt.setString(1,name);
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
