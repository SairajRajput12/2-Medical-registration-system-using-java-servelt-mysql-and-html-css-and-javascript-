package com.practice;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBC_Connection {
    static Connection con;   
    public static Connection CreateC(){    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String user = "root";
            String pass = "Vilas@343";
            String url = "jdbc:mysql://localhost:3306/patients";
            con = DriverManager.getConnection(url, user, pass);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
