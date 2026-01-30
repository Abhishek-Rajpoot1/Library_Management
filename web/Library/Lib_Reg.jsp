<%-- 
    Document   : Lib_Reg
    Created on : 10 Aug, 2025, 8:57:05 AM
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
                width: 300px; 
                color: white; 
                margin-bottom:-8px; 
                font-size: 25px;
                font-weight:bold;
                background-color: rgb(15, 17, 17);
            }
            .data{
                color: white;
                font-size: 18px;
                /*font-weight:bold;*/
                background-color: black;
                
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
            input{
                width:300px
            }
      </style>
           
    </head>
    <body>
    <center>
        <h1>Library</h1>
         <header class="main">
            
            <a href="Lib_Reg.jsp"><h2>Admin Registration</h2></a>
             <a href="adminlogin.jsp"><h2>Admin Login</h2></a>
             <a href="BookList.jsp"> <h2>Book List</h2></a>
             <a href="StudentRegisration.jsp"> <h2>Student Registration</h2></a>
            <a href="Stu_Login.jsp"> <h2>Student Login</h2></a>
           
        </header>
        <form action="../Lib_Reg">
            <h2 id="t_hadding">Librarian Registration</h2>
            <table  cellspacing="0" cellpading="5" border="2" >
                <tr><td class="data">Librarian Id</td><td><input type="number" name="id"></td></tr>
                    <tr><td class="data">Librarian Name</td><td><input type="text" name="name"></td></tr>
                    <tr><td class="data">Librarian Contact</td><td><input type="number" name="cont"></td></tr>
                    <tr><td class="data">Librarian Email</td><td><input type="text" name="email"></td></tr>
                    <tr><td> <input type="submit" value="Submit" id="submit"></td><td><input id="reset" type="reset" value="Reset"></td></tr>
            </table>
        </form>
    </center>
    </body>
</html>
