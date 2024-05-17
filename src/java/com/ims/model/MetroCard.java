    package com.ims.model;
public class MetroCard {
    private int card_id;
    private int user_id;
    private String user_name;
    private int user_contact;
    private String user_email;
    private String src_station;
    private String dst_station;
    private String date_issue;
    private String duration;

    public MetroCard() {
    }

    public MetroCard(int card_id, int user_id, String user_name, int user_contact, String user_email, String src_station, String dst_station, String date_issue, String duration) {
        this.card_id = card_id;
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_contact = user_contact;
        this.user_email = user_email;
        this.src_station = src_station;
        this.dst_station = dst_station;
        this.date_issue = date_issue;
        this.duration = duration;
    }
    
    public MetroCard(int card_id,String src_station, String dst_station,String duration){
        this.card_id=card_id;
        this.src_station=src_station;
        this.dst_station=dst_station;
        this.duration=duration;
    }

    public int getCard_id() {
        return card_id;
    }

    public void setCard_id(int card_id) {
        this.card_id = card_id;
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

    public int getUser_contact() {
        return user_contact;
    }

    public void setUser_contact(int user_contact) {
        this.user_contact = user_contact;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
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

    public String getDate_issue() {
        return date_issue;
    }

    public void setDate_issue(String date_issue) {
        this.date_issue = date_issue;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
    
    
}
