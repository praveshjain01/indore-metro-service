package com.ims.services;



import java.sql.Connection;
import java.sql.*;

public class GetConnection {
    private static Connection con = null;
    public static Connection giveConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3308/indore_metro","root","root");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
