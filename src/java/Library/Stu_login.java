
package Library;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB1.*;
import javax.servlet.http.HttpSession;

public class Stu_login extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
         String id=request.getParameter("id");
         String name=request.getParameter("name");
       
         DBConnect db=new DBConnect();
         db.pstmt=db.con.prepareStatement("select*from stu_reg where s_id=? and s_name=?");
         db.pstmt.setString(1,id);
         db.pstmt.setString(2,name);
         
         db.rst=db.pstmt.executeQuery();
         if(db.rst.next())
         {    HttpSession session =request.getSession();
                session.setAttribute("id",id);
                session.setAttribute("name",name);
            
             response.sendRedirect("Library/StudentHome.jsp?msg=Login Successful");
         }
         else{
             out.println("<h2>Wrong Login Id Or Name</h2>");
             out.println("<a href='Library/Stu_Login.jsp'>Go back o login Page</a>");
         }
         
             
                 }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}
