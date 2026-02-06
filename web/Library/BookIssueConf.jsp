<%-- 
    Document   : BookIssue
    Created on : 14 Aug, 2025, 2:20:38 PM
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
    <body class="BookIssue">
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
    
        <form action="../BookIssue">
            <h3 id="t_hadding">Book Issue</h3>
             <table border="2" cellspacing="0" cellpadding="5">
                
                <% 
                  out.println("<div id=cont>");
               String id=request.getParameter("id");
               String sid=request.getParameter("sid");
               String sname=request.getParameter("sname");
//             String id="1";
           DB1.DBConnect db=new DB1.DBConnect();
            db.pstmt=db.con.prepareStatement("select *from book_module where b_id=?");
            db.pstmt.setString(1, id);
            
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            { out.println("<tr><td class=data> Student Id</td><td><input type=text name=sid value='"+request.getParameter("sid")+"' readonly></td></tr>");   
              out.println("<tr><td class=data> Student Name</td><td><input type=text name=sname value='"+request.getParameter("sname")+"' readonly></td></tr>");  
             
            out.println("<tr><td class=data> Book Id</td><td><input type=text name=id value='"+db.rst.getString(1)+"' readonly></td></tr>");   
              out.println("<tr><td class=data> Book Name</td><td><input type=text name=name value='"+db.rst.getString(2)+"' readonly></td></tr>");  
              out.println("<tr><td class=data>Book Class</td><td><input type=text name=class value='"+db.rst.getString(3)+"' readonly></td></tr>");  
               out.println("<tr><td class=data>Book Sem</td><td><input type=text name=sem value='"+db.rst.getString(4)+"' readonly></td></tr>"); 
                 
                out.println("<tr><td><input id=submit type=submit value=Issue></td><td><input id=reset type=reset value=Reset></td></tr>");
        }
            else{
                out.println("Wrong Book Id /Sududent Id / Student name <a href=BookIssue.jsp>Try again..</a>");
            }
              
out.println("</div>");
%>
 </table>          
        </form>
    
    </body>
</html>
