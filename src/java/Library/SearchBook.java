
package Library;
import DB1.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchBook extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
           
         out.println("<body><div class=main><center><table border=2 cellpading=5 cellspacing=0>");  
         out.println("<tr><td >Enter Book Id</td><td>Enter Book Name</td>");
         out.println("<td>Enter Book Class</td><td>Enter Book Sem</td></tr>");
         
         String name=request.getParameter("name");
         DBConnect db=new DBConnect();
         db.pstmt=db.con.prepareStatement("select*from book_module where b_name=?");
         db.pstmt.setString(1,name);
         db.rst=db.pstmt.executeQuery();
         
         while(db.rst.next())
         { 
           out.println("<tr><td>"+db.rst.getString(1)+"</td><td>"+db.rst.getString(2)+"</td>");
           out.println("<td>"+db.rst.getString(3)+"</td><td>"+db.rst.getString(4)+"</td>");   
            }
         out.println("</table></center></div></body>");
         }
          
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
