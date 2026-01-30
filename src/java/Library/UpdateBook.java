
package Library;
import DB1.*;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateBook extends HttpServlet {
 public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try
        {
            String id=request.getParameter("id");
             String name=request.getParameter("name");
              String cls=request.getParameter("class");
               String sem=request.getParameter("sem");
            DBConnect db=new DBConnect();
            db.pstmt=db.con.prepareStatement("update book_module SET b_name=?,b_class=?,b_sem=? where b_id=?");
            db.pstmt.setString(1, name);
            db.pstmt.setString(2, cls);
            db.pstmt.setString(3, sem);
            db.pstmt.setString(4, id);
            int i=db.pstmt.executeUpdate();
            if(i>0)
            {
            
                 response.sendRedirect("Library/AdminHome.jsp?msg= Update Book Successfully");
            }
            else
            {
                out.println("Wrong Book Id");
                out.println("<a href='Library/UpdateBook.jsp'>Go back to Update Page</a> ");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    
        }
    }

