package com.ims.model;
public class Ticket {
    private int ticket_id;
    private int user_id;
    private String user_name;
    private String src_station;
    private String dst_station;
    private String date_time;

    public Ticket() {
    }

    public Ticket(int ticket_id, int user_id, String user_name, String src_station, String dst_station, String date_time) {
        this.ticket_id = ticket_id;
        this.user_id = user_id;
        this.user_name = user_name;
        this.src_station = src_station;
        this.dst_station = dst_station;
        this.date_time = date_time;
    }
    
    public Ticket(int ticket_id,String src_station, String dst_Station){
        this.ticket_id=ticket_id;
        this.src_station=src_station;
        this.dst_station=dst_Station;
    }

    public int getTicket_id() {
        return ticket_id;
    }

    public void setTicket_id(int ticket_id) {
        this.ticket_id = ticket_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getSrc_station() {
        return src_station;
    }

    public void setSrc_station(String src_station) {
        this.src_station = src_station;
    }

    public String getDst_station() {
        return dst_station;
    }

    public void setDst_station(String dst_station) {
        this.dst_station = dst_station;
    }

    public String getDate_time() {
        return date_time;
    }

    public void setDate_time(String date_time) {
        this.date_time = date_time;
    }
    
    
}
