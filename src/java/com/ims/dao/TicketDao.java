package com.ims.dao;

import com.ims.model.Ticket;
import com.ims.model.User;
import com.ims.services.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

public class TicketDao {
    public static boolean generateTicket(Ticket t){
        boolean flag = false;
        Connection con = null;
        try{
            con = GetConnection.giveConnection();
            String sql = "insert into ticket(user_id,user_name,src_station,dst_station,date_time) values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, t.getUser_id());
            ps.setString(2, t.getUser_name());
            ps.setString(3, t.getSrc_station());
            ps.setString(4, t.getDst_station());
            ps.setString(5, t.getDate_time());
            
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
    public static ArrayList<Ticket>  getAllTicket(Object id){
        String flag = (String) id;
        int userid = Integer.parseInt(flag);
        ArrayList<Ticket> al = new ArrayList<>();
        Connection con = null;
         try{
              con = GetConnection.giveConnection();
            String sql = "select ticket_id,src_station,dst_station from ticket where user_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userid);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int ticket_id = rs.getInt("ticket_id");
                String src_station = rs.getString("src_station");
                String dst_station = rs.getString("dst_station");
                
                Ticket ttck = new Ticket(ticket_id, src_station, dst_station);
              
              al.add(ttck);
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
      return al;
  }
}
