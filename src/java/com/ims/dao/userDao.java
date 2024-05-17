package com.ims.dao;

import com.ims.model.User;
import com.ims.services.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;

public class userDao {
    public static boolean saveUser(User u){
        boolean flag =false;
        Connection con = null;
        try{
            con = GetConnection.giveConnection();
            String sql = "insert into user(user_name,user_add,user_contact,user_dob,user_gender,user_email,user_password) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, u.getUser_name());
            ps.setString(2, u.getUser_add());
            ps.setInt(3, u.getUser_contact());
            ps.setString(4, u.getUser_dob());
            ps.setString(5, u.getUser_gender());
            ps.setString(6, u.getUser_email());
            ps.setString(7, u.getUser_password());
            
            if(ps.executeUpdate()!=0)
                flag=true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
          try{
              con.close();
          }
          catch(Exception e)
          {
              e.printStackTrace();
          }
      }
        return flag;
    }
      public static boolean aunticateUser(User u,HttpSession session){
      boolean flag = false;
      Connection con = null;
      try{
          con = GetConnection.giveConnection();
          String sql = "select * from user where user_email = ? and user_password = ?";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setString(1, u.getUser_email());
          ps.setString(2, u.getUser_password());
          ResultSet rs = ps.executeQuery();
          if(rs.next())
          {
              flag = true;
              session.setAttribute("current_username", rs.getString("user_name"));
              session.setAttribute("current_user_id", rs.getString("user_id"));
              session.setAttribute("current_user_contact", rs.getInt("user_contact"));
          }
          
      }
      catch(Exception e){
          e.printStackTrace();
      }
      finally{
          try{
              con.close();
          }
          catch(Exception e){
              e.printStackTrace();
          }
      }
      return flag;
  }
}
