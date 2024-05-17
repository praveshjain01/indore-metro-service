package com.ims.model;

public class Station {
    private int station_id;
    private String station_name;
    private int up_rank;
    private int down_rank;

    public Station() {
    }

    public Station(int station_id, String station_name, int up_rank, int down_rank) {
        this.station_id = station_id;
        this.station_name = station_name;
        this.up_rank = up_rank;
        this.down_rank = down_rank;
    }
//    public Station(String station_name){
//        this.station_name = station_name;
//    }

    public int getStation_id() {
        return station_id;
    }

    public void setStation_id(int station_id) {
        this.station_id = station_id;
    }

    public String getStation_name() {
        return station_name;
    }
    
    
    public void setStation_name(String station_name) {
        this.station_name = station_name;
    }
    
    public String getStation_namee() {
        return station_name;
    }
    
    public void setStation_namee(String station_name) {
        this.station_name = station_name;
    }

    public int getUp_rank() {
        return up_rank;
    }

    public void setUp_rank(int up_rank) {
        this.up_rank = up_rank;
    }

    public int getDown_rank() {
        return down_rank;
    }

    public void setDown_rank(int down_rank) {
        this.down_rank = down_rank;
    }
    
    
    
}
