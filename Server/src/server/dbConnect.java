/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.sql.*;

/**
 *
 * @author Isuru Sandaruwan
 */
public class dbConnect {
    
    public static Connection connectDB(){
        
        Connection conn = null;
        try{
            String jdbcDriver = "com.mysql.jdbc.Driver";
            String DataBase = "jdbc:mysql://localhost:3306/networking"; //select the database name
            Class.forName(jdbcDriver); //add driver to the class
            conn = DriverManager.getConnection(DataBase , "root", ""); //handles connection requests between application and databases 
        }

        catch(Exception e){

        }
        
        return conn;
    }
}
