package com.ims.dao;

import com.ims.model.Station;
import com.ims.services.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class stationDao {
    public static ArrayList<Station> getStations(){
        ArrayList<Station> al = new ArrayList<Station>();
        Connection con = null;
        try{
            con = GetConnection.giveConnection();
            String sql = "select * from station";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int station_id = rs.getInt(1);
                String station_name = rs.getString(2);
                int up_rank = rs.getInt(3);
                int down_rank = rs.getInt(4);
                
                Station ston = new Station(station_id, station_name, up_rank, down_rank);
                
                al.add(ston);
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
    public static ArrayList<Station> getAllStationUP(Station s){
      ArrayList<Station> al = new ArrayList<>();
      Connection con = null;
      try{
          con = GetConnection.giveConnection();
          String sql = "select * from station where station_id between ? and ?";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setInt(1, s.getStation_id());
          ps.setInt(2, s.getUp_rank());
          ResultSet rs = ps.executeQuery();
          System.out.println(sql);
          while(rs.next())
          {
              int station_id = rs.getInt("station_id");
              String station_name = rs.getString("station_name");
              int up_rank = rs.getInt("up_rank");
              int down_rank = rs.getInt("down_rank");
              
              Station station = new Station(station_id, station_name, up_rank, down_rank);
              
              al.add(station);
          }
          
      }
      
      catch(Exception e)
      {
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
      return al;
  }
    public static ArrayList<Station> getAllStationDown(Station s){
      ArrayList<Station> all = new ArrayList<>();
      Connection con = null;
      try{
          con = GetConnection.giveConnection();
          String sql = "select * from station where station_id between ? and ? order by station_id desc";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setInt(1, s.getUp_rank());
          ps.setInt(2, s.getStation_id());
          ResultSet rs = ps.executeQuery();
          while(rs.next())
          {
              int station_id = rs.getInt("station_id");
              String station_name = rs.getString("station_name");
              int up_rank = rs.getInt("up_rank");
              int down_rank = rs.getInt("down_rank");
              
              Station station = new Station(station_id, station_name, up_rank, down_rank);
              
              all.add(station);
          }
      }
      
      catch(Exception e)
      {
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
      return all;
  }
   public static ArrayList<Station> getTicketStationUp(Station s){
      ArrayList<Station> all = new ArrayList<>();
      Connection con = null;
      try{
          con = GetConnection.giveConnection();
          String sql = "select * from station where station_id=? or up_rank=?";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setInt(1, s.getStation_id());
          ps.setInt(2, s.getUp_rank());
          ResultSet rs = ps.executeQuery();
          while(rs.next())
          {
              int station_id = rs.getInt("station_id");
              String station_name = rs.getString("station_name");
              int up_rank = rs.getInt("up_rank");
              int down_rank = rs.getInt("down_rank");
              
              Station station = new Station(station_id, station_name, up_rank, down_rank);
              
              all.add(station);
          }
      }
      catch(Exception e)
      {
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
      return all;
  } 
   public static ArrayList<Station> getTicketStationDown(Station s){
      ArrayList<Station> all = new ArrayList<>();
      Connection con = null;
      try{
          con = GetConnection.giveConnection();
          String sql = "select * from station where station_id = ? or up_rank = ? order by station_id desc";
          PreparedStatement ps = con.prepareStatement(sql);
          ps.setInt(1, s.getUp_rank());
          ps.setInt(2, s.getStation_id());
          ResultSet rs = ps.executeQuery();
          while(rs.next())
          {
              int station_id = rs.getInt("station_id");
              String station_name = rs.getString("station_name");
              int up_rank = rs.getInt("up_rank");
              int down_rank = rs.getInt("down_rank");
              
              Station station = new Station(station_id, station_name, up_rank, down_rank);
              
              all.add(station);
          }
      }
      
      catch(Exception e)
      {
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
      return all;
  }
}
