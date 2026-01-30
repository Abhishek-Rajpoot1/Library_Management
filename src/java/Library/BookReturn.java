
package Library;
import DB1.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookReturn extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
           String id=request.getParameter("id");
           String name=request.getParameter("name");
           String cls=request.getParameter("class");
           String sem=request.getParameter("sem");
           DBConnect db= new DBConnect();
           db.pstmt=db.con.prepareStatement("select*from book_issue where b_id=? and b_name=?");
           db.pstmt.setString(1,id);
           db.pstmt.setString(2,name);
           db.rst=db.pstmt.executeQuery();
           if(db.rst.next()){
               
          db.pstmt=db.con.prepareStatement("insert into book_module values(?,?,?,?)");
            db.pstmt.setString(1, id);
            db.pstmt.setString(2, name);
            db.pstmt.setString(3, cls);
            db.pstmt.setString(4, sem);
            int i=db.pstmt.executeUpdate();
           if(i>0)
           {
              db.pstmt=db.con.prepareStatement("delete from  book_issue where b_id=? and b_name=?");
               db.pstmt.setString(1,id);
           db.pstmt.setString(2,name);
           int i1 = db.pstmt.executeUpdate();
           if(i1>0)
           {
               response.sendRedirect("Library/StudentHome.jsp?msg=Delete Book Successfully");
           }
           }
           
           }
           else{
              out.println("Book Not Return <a href='Library/ReturnBook.jsp'>Go back to return page</a>"); 
           }  
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}
