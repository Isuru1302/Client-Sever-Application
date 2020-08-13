/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Isuru Sandaruwan
 */
public class Path extends Server{
    
    public Path(){ //constructor for database connection
        conn = dbConnect.connectDB();
    }
    
    public String getPath(String city1,String city2){
        try{

            String query = "SELECT * FROM path_table where city='"+city1+"'";
            
            // create the java statement
            Statement st = conn.createStatement();
            
            // execute the query,make as a statement and get a java resultset
            ResultSet rs = st.executeQuery(query);
            
            while (rs.next())
            {
              String displaydistance = rs.getString(city2);

              // print the results
              return displaydistance;
            }
            st.close();
        }
        
        catch(Exception e){
            System.out.print(e);
        }
        
        return null;
    }
}
