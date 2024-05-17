package com.ims.model;

public class User {
    private String user_name;
    private String user_add;
    private int user_contact;
    private String user_dob;
    private String user_gender;
    private String user_email;
    private String user_password;

    public User() {
    }

    public User(String user_name, String user_add, int user_contact, String user_dob, String user_gender, String user_email, String user_password) {
        this.user_name = user_name;
        this.user_add = user_add;
        this.user_contact = user_contact;
        this.user_dob = user_dob;
        this.user_gender = user_gender;
        this.user_email = user_email;
        this.user_password = user_password;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_add() {
        return user_add;
    }

    public void setUser_add(String user_add) {
        this.user_add = user_add;
    }

    public int getUser_contact() {
        return user_contact;
    }

    public void setUser_contact(int user_contact) {
        this.user_contact = user_contact;
    }

    public String getUser_dob() {
        return user_dob;
    }

    public void setUser_dob(String user_dob) {
        this.user_dob = user_dob;
    }

    public String getUser_gender() {
        return user_gender;
    }

    public void setUser_gender(String user_gender) {
        this.user_gender = user_gender;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }
    
}
