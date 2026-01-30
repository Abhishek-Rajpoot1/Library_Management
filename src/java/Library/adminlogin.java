
package Library;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB1.*;

public class adminlogin extends HttpServlet {

    
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String id=request.getParameter("id");
            String name=request.getParameter("name");
            DBConnect db= new DBConnect();
// after correction          db.pstmt=db.con.prepareStatement("select*from adminlogin where l_id=? and l_name=?");
            db.pstmt=db.con.prepareStatement("select*from  lib_reg where l_id=? and l_name=?");
           db.pstmt.setString(1, id);
           db.pstmt.setString(2,name);
           db.rst=db.pstmt.executeQuery();
           if(db.rst.next())
           {
               response.sendRedirect("Library/AdminHome.jsp?msg=admin Registration successful");
           }
           else{
                out.println("<h1>Incorrect Libararian Id Or Password</h1>");
               }
        }
        catch(Exception e)
        {
          e.printStackTrace();
        }
    }
}
