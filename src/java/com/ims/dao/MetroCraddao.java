package com.ims.dao;

import com.ims.model.MetroCard;
import com.ims.model.Ticket;
import com.ims.services.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MetroCraddao {
    public static boolean generateMetroCard(MetroCard mcd){
        boolean flag = false;
        Connection con = null;
        try{
            con = GetConnection.giveConnection();
            String sql = "insert into metro_card(user_id,user_name,user_contact,user_email,src_station,dst_station,date_issue,duration) values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, mcd.getUser_id());
            ps.setString(2, mcd.getUser_name());
            ps.setInt(3, mcd.getUser_contact());
            ps.setString(4, mcd.getUser_email());
            ps.setString(5, mcd.getSrc_station());
            ps.setString(6, mcd.getDst_station());
            ps.setString(7, mcd.getDate_issue());
            ps.setString(8, mcd.getDuration());
            
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
    
    public static ArrayList<MetroCard> getAllMetroCard(Object id){
        String flag = (String) id;
        int userid = Integer.parseInt(flag);
        ArrayList<MetroCard> al = new ArrayList<>();
        Connection con = null;
         try{
              con = GetConnection.giveConnection();
            String sql = "select card_id,src_station,dst_station,duration from metro_card where user_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userid);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int card_id = rs.getInt("card_id");
                String src_station = rs.getString("src_station");
                String dst_station = rs.getString("dst_station");
                String duration = rs.getString("duration");
                
                MetroCard almc = new MetroCard(card_id, src_station, dst_station, duration);
              
              al.add(almc);
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
