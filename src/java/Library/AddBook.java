
package Library;
import DB1.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddBook extends HttpServlet {

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
            db.pstmt=db.con.prepareStatement("insert into book_module values(?,?,?,?)");
            db.pstmt.setString(1, id);
            db.pstmt.setString(2, name);
            db.pstmt.setString(3, cls);
            db.pstmt.setString(4, sem);
            int i=db.pstmt.executeUpdate();
            if(i>0)
            {
                 response.sendRedirect("Library/BookModule.jsp?msg= Add Book Successfully");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
