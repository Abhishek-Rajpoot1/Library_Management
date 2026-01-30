
package Library;
import DB1.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Lib_Reg extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
         String id=request.getParameter("id");  
         String name=request.getParameter("name");  
         String cont=request.getParameter("cont");  
         String email=request.getParameter("email");  
         DBConnect db= new DBConnect();
         db.pstmt=db.con.prepareStatement("insert into lib_reg values(?,?,?,?)");
         db.pstmt.setString(1, id);
         db.pstmt.setString(2, name);
         db.pstmt.setString(3, cont);
         db.pstmt.setString(4, email);
         int i=db.pstmt.executeUpdate();
         if(i>0)
         {
              response.sendRedirect("Library/AdminHome.jsp?msg= Librarian Registraton Successfully");
         }
         else
         {
             out.println("");
         }
         
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
