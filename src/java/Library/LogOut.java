

package Library;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB1.DBConnect;
import javax.servlet.http.HttpSession;

public class LogOut extends HttpServlet {

   
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session=request.getSession();
            session.removeAttribute("id");
        }
        
    catch(Exception e)
{
    e.printStackTrace();
}

    }   
}
