
package Library;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB1.*;

public class Stu_Reg extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
          String id=request.getParameter("id");
          String name=request.getParameter("name");
          String branch=request.getParameter("branch");
          String year =request.getParameter("year");
          String sem = request.getParameter("sem");
          String cont =request.getParameter("cont");
          String email = request.getParameter("email");
          DBConnect db=new DBConnect();
          db.pstmt=db.con.prepareStatement("insert into stu_reg  values(?,?,?,?,?,?,?)");
        
         db.pstmt.setString(1, id);
         db.pstmt.setString(2, name);
         db.pstmt.setString(3, branch);
         db.pstmt.setString(4, year);
         db.pstmt.setString(5,sem);
          db.pstmt.setString(6, cont);
         db.pstmt.setString(7,email);
          int i=db.pstmt.executeUpdate();
          if(i>0)
          {
            response.sendRedirect("Library/StudentHome.jsp?msg=Registraton Successfully");  
          }
        
         
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}
