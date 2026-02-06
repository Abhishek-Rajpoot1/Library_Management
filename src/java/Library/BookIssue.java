
package Library;
import DB1.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class BookIssue extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         HttpSession session =request.getSession();
//            String id=session.getAttribute("id").toString();
//            String name=session.getAttribute("name").toString();

           
           String id=request.getParameter("id");
           String name=request.getParameter("name");
           String sid=request.getParameter("sid");
           String sname=request.getParameter("sname");
           String cls=request.getParameter("class");
           String sem=request.getParameter("sem");
           DBConnect db= new DBConnect();
           db.pstmt=db.con.prepareStatement("select*from book_module where b_id=? and b_name=?");
           db.pstmt.setString(1,id);
           db.pstmt.setString(2,name);
           db.rst=db.pstmt.executeQuery();
           if(db.rst.next()){
               
           db.pstmt=db.con.prepareStatement("insert into book_issue values(?,?,?,?,?,?)");
           db.pstmt.setString(1,sid);
           db.pstmt.setString(2,sname);
           db.pstmt.setString(3,id);
           db.pstmt.setString(4,name);
           db.pstmt.setString(5,cls);
           db.pstmt.setString(6,sem);
          
           int i=db.pstmt.executeUpdate();
           if(i>0)
           {
              db.pstmt=db.con.prepareStatement("delete from  book_module where b_id=? and b_name=?");
               db.pstmt.setString(1,id);
               db.pstmt.setString(2,name);
           int i1 = db.pstmt.executeUpdate();
           if(i1>0)
           {
               response.sendRedirect("Library/StudentHome.jsp?msg=Issue Book Successfully");
           }
           }
           
           }
           else{
              out.println(" NOt ok"); 
           }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}
