<%-- 
    Document   : AddBook
    Created on : 11 Aug, 2025, 9:35:59 PM
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
                background-image: url("Images/add_book.jpg ");
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
            .data{
                
                font-size: 30px;
                font-weight:bold;
                
            }
            table{
                margin-top:10px;
                margin-left: -20px;
                
            }
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
            #cont{
                background-color:palegoldenrod;
            }
      </style>
    </head>
    <body>
         <center>
        <!--<form action="UpdateBook.jsp">-->
           <h1>Librarian Home page</h1>
        <header class="main">
          <a href="AdminHome.jsp"><h2>Back</h2></a>
          <a href="Home.jsp"><h2>Home</h2></a>
          <a href="SearchId.jsp"> <h2>Search Books</h2></a>
          <a href="AddBook.jsp">   <h2>Add Books</h2></a>
          <a href="Update.jsp"> <h2>Update Books</h2></a>
          <a href="Delete.jsp"> <h2>Delete  Book</h2></a>
             <a href="../LogeOut"> <h2 id="logout">Logout</h2></a>
  </header>
        <form action="../AddBook">
            <h2>Add Book</h2>
           <table cellpadding="5" cellspacing="0" border="2">
                <tr><td class="data">Enter Book Id</td><td><input type="text" name="id"></td></tr>
                <tr><td class="data">Enter Book Name</td><td><input type="text" name="name"></td></tr>
                <tr><td class="data">Enter Book Class</td><td><input type="text" name="class"></td></tr>
                <tr><td class="data">Enter Book Sem</td><td><input type="text" name="sem"></td></tr>
                <tr><td><input type="submit" value="Submit" id="submit"></td><td><input id="reset" type="reset" value="Reset"></td></tr>
            </table>
                
        </form>
    </center>
    </body>
</html>
