import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class faclogin extends HttpServlet {

    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/student_information";
    static final String USER = "root";
    static final String PASS = "multicore";

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        Connection conn = null;
        Statement stmt = null;
        String User=null;
        String Pass=null;
        PrintWriter out=res.getWriter();
        res.setContentType("text/html");
        try
        {
       
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            System.out.println("Database..");
            stmt = conn.createStatement();
            String sql = "SELECT * FROM student_login";
            ResultSet rs = stmt.executeQuery(sql);


            PrintWriter pw = res.getWriter();
            res.setContentType("text/html");

            String user = req.getParameter("username");
            String pass = req.getParameter("password");

            pw.print("<font face='verdana'>");
while(rs.next())
 {
 User=rs.getString("username");
 Pass=rs.getString("password");
 if(User.equals(user) && Pass.equals(pass)){
                   System.out.println("sucess");
  res.sendRedirect("main.jsp");
 }
else
                   System.out.println("Failed");

}


            pw.print("</font>");
            pw.close();

        }
         catch(Exception e)
    {
        System.out.println("error in DB connection");
    }
    }
}
   

    
