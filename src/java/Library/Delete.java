
package Library;
import DB1.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Delete extends HttpServlet {

    
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
           String id=request.getParameter("id");
           DBConnect db= new DBConnect();
           db.pstmt=db.con.prepareStatement("select *from book_module where b_id=?");
            db.pstmt.setString(1, id);
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
             out.println("<tr><td >Enter Book Id</td><td><input type=text name=id value='"+db.rst.getString(1)+"'></td></tr>");   
              out.println("<tr><td>Enter Book Name</td><td>"+db.rst.getString(2)+"</td></tr>");  
              out.println("<tr><td>Enter Book Class</td><td>"+db.rst.getString(3)+"</td></tr>");  
               out.println("<tr><td>Enter Book Sem</td><td>"+db.rst.getString(4)+"</td></tr>"); 
                 
           db.pstmt=db.con.prepareStatement("delete from book_module where b_id=?");
           db.pstmt.setString(1, id);
           int i=db.pstmt.executeUpdate();
           if(i>0)
           {
               response.sendRedirect("Library/BookModule.jsp?msg=Delete Book Successfully");
           }
           else
           {
               out.println("Wrong Book Id");
               out.println("<a hreh='Library/Delete.jsp'>Go back to delete page</a>");
           }
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}
