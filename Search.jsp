<%-- 
    Document   : Search
    Created on : 13 Aug, 2025, 9:14:56 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search Page</title>
        <link rel="stylesheet" href="Style.css">
         
    </head>
    <body>
         <center>
        <form action="UpdateBook.jsp">
           <h1>Librarian Home page</h1>
        <header class="main">
          <a href="AdminHome.jsp"><h3>Back</h3></a>
          <a href="Home.jsp"><h3>Home</h3></a>
          <a href="SearchId.jsp"> <h3>Search Books</h3></a>
          <a href="AddBook.jsp">   <h3>Add Books</h3></a>
          <a href="Update.jsp"> <h3>Update Books</h3></a>
          <a href="Delete.jsp"> <h3>Delete  Book</h3></a>
             <a href="../LogeOut"> <h3 id="logout">Logout</h3></a>
  </header>
            <table border="2" cellspacing="0" cellpading="5">
                
                <% 
                  out.println("<div id=cont>");
                  String id=request.getParameter("id");
//             String id="1";
           DB1.DBConnect db=new DB1.DBConnect();
            db.pstmt=db.con.prepareStatement("select *from book_module where b_id=?");
            db.pstmt.setString(1, id);
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
             out.println("<tr><td class=data >Enter Book Id</td><td><input type=text name=id value='"+db.rst.getString(1)+"'></td></tr>");   
              out.println("<tr><td class=data>Enter Book Name</td><td>"+db.rst.getString(2)+"</td></tr>");  
              out.println("<tr><td class=data>Enter Book Class</td><td>"+db.rst.getString(3)+"</td></tr>");  
               out.println("<tr><td class=data>Enter Book Sem</td><td>"+db.rst.getString(4)+"</td></tr>"); 
                 
                out.println("<tr><td><input id=submit type=submit value=Update></td><td><input id=reset type=reset value=Reset></td></tr>");
        }
            else{
                out.println("Book not avilable in Library");
            }
              
out.println("</div>");
%>
 </table>
                
        </form>
    </center>
    </body>
</html>
