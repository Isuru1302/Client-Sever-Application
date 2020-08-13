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
public class Distance extends Server{
    
    public Distance(){
        conn = dbConnect.connectDB();
    }
 
    public int getDistance(String city1,String city2){
        try{
            
            String query = "SELECT * FROM distance_table where city="+city1;
            
            // create the java statement
            Statement st = conn.createStatement();
            
            // execute the query,make as a statement and get a java resultset
            ResultSet rs = st.executeQuery(query);
            
            while (rs.next()) //until query statement is true
            {
              displaydistance = rs.getInt(city2);

              // return the results
              return displaydistance;
            }
            st.close();//close the query statement
        }
        
        catch(Exception e){
            System.out.print(e);
        }
        
        return 0;
    }
}
