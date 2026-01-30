<%-- 
    Document   : AdminHome
    Created on : 1 Aug, 2025, 6:51:09 AM
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
                background-image: url("Images/liabrarian.png ");
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
            a{
                 text-decoration: none;
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
                height: 60px;
                margin: 0px;
                padding-top:15px;
                color:rgb(255, 255, 255);
                background-color: rgb(15, 17, 17) ;
                
            }
            #logout{
                height: 40px;
                width: 110px;
                border-radius: 30px;
                background-color: brown;
                color: black;
                padding-top:7px;
                margin-top:10px;
                
            }
        </style>
    </head>
    <body>
         <center>
        
        <h1>Librarian Home page</h1>
        <header class="main">
            
            <a href="Home.jsp"><h2>Home</h2></a>
            <a href=""><h2>  </h2></a>
             <a href="BookModule.jsp"> <h2>Books</h2></a>
             <a href="../LogeOut"> <h2 id="logout">Logout</h2></a>
  </header>
      
             
       
    </center>
    </body>
</html>
