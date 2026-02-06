<%-- 
    Document   : UpdateBook
    Created on : 11 Aug, 2025, 10:10:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Style.css" >
        <script defer src="Library.js"></script> 
    </head>
    <body class="updateBook">
        <nav class="navbar">
            <div class="logo">Librarian Home page</div>
       
            <ul>
           <li><a href="Home.jsp"> Home </a></li>
           <li><a href="SearchId.jsp">  Search Books </a></li>
           <li><a href="AddBook.jsp">    Add Books </a></li>
           <li><a href="Update.jsp">  Update Books </a></li>
           <li><a href="Delete.jsp">  Delete  Book </a></li>
              <li><a href="Home.jsp"> Logout </a></li>
          
            </ul>
             <div class="menu-toggle" id="menu-toggle">&#9776;</div>
        </nav>
        <form action="../UpdateBook">
            <h3 id="t_hadding">Update Book</h3>
                          <table border="2" cellspacing="0" cellpadding="5">
            
                <% 
             out.println("<div id=cont>");       
           String id=request.getParameter("id");
//            String id="1";
           DB1.DBConnect db=new DB1.DBConnect();
            db.pstmt=db.con.prepareStatement("select *from book_module where b_id=?");
            db.pstmt.setString(1, id);
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
             out.println("<tr><td class=data> Book Id</td><td><input type=text name=id value='"+db.rst.getString(1)+"' readonly></td></tr>");   
              out.println("<tr><td class=data> Book Name</td><td><input type=text name=name value='"+db.rst.getString(2)+"'></td></tr>");  
              out.println("<tr><td class=data>Book Class</td><td><input type=text name=class value='"+db.rst.getString(3)+"'></td></tr>");  
               out.println("<tr><td class=data>Book Sem</td><td><input type=text name=sem value='"+db.rst.getString(4)+"'></td></tr>"); 
                 
                out.println("<tr><td><input id=submit type=submit value=Update></td><td><input id=reset type=reset value=Reset></td></tr>");
        }
            else{
                out.println("Wrong Book Id <a href=SearchId.jsp>Try again..</a>");
            }
              
out.println("</div>");
%>
 </table>
        </form>
   
    </body>
</html>
