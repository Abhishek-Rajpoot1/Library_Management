<%-- 
    Document   : ReturnBook
    Created on : 14 Aug, 2025, 3:29:41 PM
    Author     : Admin
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Style.css">
        <script defer src="Library.js"></script>
    </head>
    <body class="ReturnBook">
       <nav class="navbar">
            <div class="logo">Student Home</div>
            <ul>
                <li> <a href="Home.jsp"> Home </a></li>
                <li><a href="SearchBook.jsp"> Search Book</a></li>
                <li><a href="BookIssue.jsp">  Issue Books</a></li>
                <li><a href="Issued.jsp">  Issued Books </a></li>
                <li> <a href="Fine.jsp"> Submit Fine </a></li>
                   <li> <a href="Home.jsp"> Logout </a></li> 
            </ul>
        <div class="menu-toggle" id="menu-toggle">&#9776;</div>
        </nav>
           
        <form action="../BookReturn">
            <h3 id="t_hadding">Book Return</h3>
             <table border="2" cellspacing="0" cellpadding="5">
              
                <% 
                  out.println("<div id=cont>");
                  String id=request.getParameter("id");
//             String id="1";
           DB1.DBConnect db=new DB1.DBConnect();
            db.pstmt=db.con.prepareStatement("select *from book_issue where b_id=?");
            db.pstmt.setString(1, id);
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
            out.println("<tr id=data ><td> Book Id</td><td>"+db.rst.getString(1)+"</td></tr>");   
              out.println("<tr id=data><td> Book Name</td><td>"+db.rst.getString(2)+"</td></tr>");  
              out.println("<tr id=data><td>Book Class</td><td>"+db.rst.getString(3)+"</td></tr>");  
               out.println("<tr id=data><td>Book Sem</td><td>"+db.rst.getString(4)+"</td></tr>"); 
                 
                out.println("<tr id=data><td><input id=submit type=submit value=Return ></td><td><input id=reset type=reset value=Reset></td></tr>");
        }
            else{
                out.println("Book not avilable in Library ");
            }
              
out.println("</div>");
%>
 </table>      
        </form>
    
    </body>
</html>
