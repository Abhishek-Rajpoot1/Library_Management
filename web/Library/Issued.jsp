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
          <style>
            body{
                height:750px;
                width:100%;
                /*border: 2px solid black;*/
                margin:0px;
                padding: 0px;
                background-repeat: no-repeat;
                background-size:100% 100%;
                background-position-y: 145px;
                background-image: url("Images/issued_book.jpg ");
            }
            a{
                 text-decoration: none;
            }
            .main {
                 /*margin-top: -40px;*/
               height:70px;
               width:100%;
                /*border:5px solid black;*/
                background-color:rgb(19, 25, 33);
                justify-content:space-evenly;
                display: flex;
               
                
            }
        .main a h2:hover{
                color:gray;
                /*font-size:20px;*/
                /*margin:1px;*/
                padding: 2px;
                border:1px white solid;
            }
            .main a h2{
                color:rgb(255, 255, 255);
            }
            h1{ 
                font-size: 40px;
                height:60px;
                margin: 0px;
                padding-top: 15px;
                /*margin-top: -5px;*/
                color:rgb(255, 255, 255);
                background-color: rgb(15, 17, 17) ;
            }
            #t_hadding{
                width: 350px; 
                color: white; 
                margin-bottom:0px; 
                font-size: 25px;
                font-weight:bold;
                background-color: rgb(15, 17, 17);
            }
            .data{
                color: white; 
                font-size: 18px;
                /*font-weight:bold;*/
                background-color: rgb(15, 17, 17);
                
            }
            #data{
                color: white; 
                background-color: rgb(19, 25, 33);
                    
            }
/*            table{
                margin-top:10px;
                margin-left: -5px;
                
            }*/
            #submit{
                color: white;
                width:150px;
                background-color: rgb(45, 65, 35);
                font-size: 20px;
                border-radius: 20px;
                font-weight: bold;
                margin-left: 30px;
            }
            #reset{
                color: white;
                width:120px;
                background-color: rgb(79, 25, 33);
                font-size: 20px;
                border-radius: 20px;
                font-weight: bold;
                margin-left:100px;
            }
             #logout{
                height: 40px;
                width: 110px;
                
                border-radius: 30px;
                background-color:darkred;
                color: black;
                padding-top:7px;
                margin-top:12px;
                
            }
            input{
                width:300px
            }
      </style>
    </head>
    <body>
    <center>
        <form>
            <h1>Student Home</h1>
             <header class="main">
            <a href="Home.jsp"><h2>Home</h2> </a>
             <a href="SearchBook.jsp"><h2>Search Book</h2></a>
             <a href="BookIssue.jsp"><h2> Issue Books</h2></a>
             <a href="Issued.jsp"><h2> Issued Books</h2></a>
             <a href="ReturnBook.jsp"><h2> Return Books</h2></a>
              <a href="../LogeOut"> <h2 id="logout">Logout</h2></a>
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

