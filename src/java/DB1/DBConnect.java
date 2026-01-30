

  package DB1;
  import java.sql.*;
 public class DBConnect {
 public Connection con;
 public Statement stmt;
 public PreparedStatement pstmt;
 public ResultSet rst;
 public DBConnect()
 {
     try
     {
         
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","0000");
                 
     }
     catch(Exception e)
     {
         e.printStackTrace();
     }
 }
}
