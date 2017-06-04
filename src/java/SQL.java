/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Aishwarya Kannan
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.*;

import javax.swing.*;

public class SQL {
    
    
public Connection conn;
    
public ResultSet rs;
public Statement stmt;
    
public PreparedStatement pst;
    
    
   public SQL(String user){
        //To Connect with any other Database
        try{
            String URL="jdbc:mysql://localhost:3306/student_information";
            String driver="com.mysql.jdbc.Driver";
            String password="admin";
            Class.forName(driver);
            conn = DriverManager.getConnection(URL,user,password);
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
   }
    
 
 
      public ResultSet getdetails(Long user,String password) throws SQLException
     {
         pst=conn.prepareStatement("SELECT * FROM Student_Login WHERE username=? AND password=?");
          pst.setLong(1, user);
          pst.setString(2, password);
        rs=pst.executeQuery();
            return rs;
      
     }
      public void insert_parentdetails(long regno,String fathername, String fatherocc,String fatherin, String mothername, String motherocc,String motherin,String guardname,String guardocc, String parentaddress, String parph, String paremail, String guardaddress, String guardph, String guardemail) throws SQLException{
      
      pst=conn.prepareStatement("insert into Parents_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      pst.setLong(1,regno);
        pst.setString(2,fathername);
        pst.setString(3,fatherocc);
        pst.setString(4, fatherin);
        pst.setString(5, mothername);
        pst.setString(6, motherocc);
        pst.setString(7, motherin);
         pst.setString(8,guardname);
        pst.setString(9,guardocc);
        pst.setString(10, parentaddress);
        pst.setString(11, parph);
        pst.setString(12, paremail);
        pst.setString(13, guardaddress);
        pst.setString(14, guardph);
         pst.setString(15,guardemail);
          pst.executeUpdate();
        
      
      }
     
     public void insert_personaldetails(String name,long regno,String dob,String sex,String bg,String comm, float gate,String admit,String special,String games,String scholarship,String volunteer,String hd,String block1,String room1,String block2,String room2,String block3,String room3,String block4, String room4) throws SQLException
     {
       
        pst=conn.prepareStatement("insert into Personal_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1,name);
        pst.setLong(2,regno);
        pst.setString(3,dob);
        pst.setString(4, sex);
        pst.setString(5, bg);
        pst.setString(6, comm);
        pst.setFloat(7, gate);
         pst.setString(8,admit);
        pst.setString(9,special);
        pst.setString(10, games);
        pst.setString(11, scholarship);
        pst.setString(12, volunteer);
        pst.setString(13, hd);
        pst.setString(14, block1);
         pst.setString(15,room1);
        pst.setString(16,block2);
        pst.setString(17, room2);
        pst.setString(18, block3);
        pst.setString(19, room3);
        pst.setString(20, block4);
        pst.setString(21, room4);
        pst.executeUpdate();
        conn.close();
     }
     public ResultSet view_bookingdetails() throws SQLException
     {
      stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        rs=stmt.executeQuery("select * from bookingdetails");
        return rs;   
     }
         public void insert_achievement(long regno,String firstyr, String secondyr,String thirdyr, String fourthyr) throws SQLException{
             pst=conn.prepareStatement("insert into achievements values(?,?,?,?,?)");
        pst.setLong(1,regno);
        pst.setString(2,firstyr);
        pst.setString(3,secondyr);
        pst.setString(4, thirdyr);
        pst.setString(5, fourthyr);
         pst.executeUpdate();
        conn.close();

         }
         public void insert_sems(long regno,String subname,String internal, String grade, String remarks) throws SQLException{
             pst=conn.prepareStatement("insert into Sem values(?,?,?,?,?)");
             pst.setLong(1,regno);
        pst.setString(2,subname);
        pst.setString(3,internal);
        pst.setString(4, grade);
        pst.setString(5, remarks);
         pst.executeUpdate();
        //conn.close();
         }
         public void insert_arrear(long regno,String month,String code, String internal, String grade, String remark, String advisor) throws SQLException{
             pst=conn.prepareStatement("insert into arrear values(?,?,?,?,?,?,?)");
             pst.setLong(1,regno);
        pst.setString(2,month);
        pst.setString(3,code);
        pst.setString(4, internal);
        pst.setString(5, grade);
        pst.setString(6, remark);
        pst.setString(7, advisor);
         pst.executeUpdate();
        //conn.close();
         }
public void closeconn () throws SQLException{
    conn.close();
}
    } 
