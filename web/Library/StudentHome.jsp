<%-- 
    Document   : StudentHome
    Created on : 1 Aug, 2025, 7:15:46 AM
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
                background-image: url("Images/home.jpg ");
            }
            .main {
                 /*margin-top: -40px;*/
               height:70px;
               width:100%;
/*                border:5px solid black;*/
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
                height:60px;
                margin: 0px;
                padding-top: 15px;
                /*margin-top: -5px;*/
                color:rgb(255, 255, 255);
                background-color: rgb(15, 17, 17) ;
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
        </style>
    </head>
    <body><center>
        <h1>Student Home</h1>
        
        <header class="main">
            <a href="Home.jsp"><h2>Home</h2> </a>
             <a href="SearchBook.jsp"><h2>Search Book</h2></a>
             <a href="BookIssue.jsp"><h2> Issue Books</h2></a>
             <a href="Issued.jsp"><h2> Issued Books</h2></a>
             <a href="ReturnBook.jsp"><h2> Return Books</h2></a>
             <a href="../LogOut"> <h2 id="logout">Logout</h2></a>
        </header>
    </center>
    </body>
</html>
