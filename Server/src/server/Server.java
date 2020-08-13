/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.util.Scanner;
/**
 *
 * @author Isuru Sandaruwan
 */
public class Server {

    static String startMessage;
    static String endMessage;
    static String serverMessage;
    static String serverStartMessage;
    static String thanksMessage;
    static String currentCity;
    static String city1;
    static String city2;
    static String destinationCity;
    static String query1;
    static String query2;
    static String servernextQueryMessage;
    static String againMessage;
    static int displaydistance=0;
    static Connection conn= null;
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) throws UnknownHostException, IOException{
        
       
        
	ServerSocket ss = new ServerSocket(8024);
	Socket server = ss.accept();
	Scanner serverInput = new Scanner(server.getInputStream()); //get data from the client
        PrintStream print = new PrintStream (server.getOutputStream());  //write data to the client

        startMessage = serverInput.nextLine();
        
        if(startMessage.matches("Hello|hello")){
            serverStartMessage ="Hello Client, send your current city";
            print.println(serverStartMessage);
        }
        
        do{

        currentCity = serverInput.nextLine();
        city1 = currentCity;
        serverMessage ="Ok, send your destination city";
        print.println(serverMessage);
        
        
        destinationCity = serverInput.nextLine();
        city2 = destinationCity;
        serverMessage ="Ok, send your query";
        print.println(serverMessage);

        query1=serverInput.nextLine();
        if(query1.matches("Distance|distance")){
            Distance dis1 = new Distance();
            int distance = dis1.getDistance(city1,city2);
            serverMessage=("Distance to "+city2+" from "+city1+" = "+distance+"km");
            print.println(serverMessage);
            servernextQueryMessage = "To find Path type \033[0;1m Path \033[0;0m";
            print.println(servernextQueryMessage);
        }
        
        else{
            Path p1 = new Path();
            String path = p1.getPath(city1, city2);
            serverMessage=("Path to "+city2+" from "+city1+" : via "+path);
            print.println(serverMessage);
            servernextQueryMessage = "To find Distance type \033[0;1m Distance \033[0;0m";
            print.println(servernextQueryMessage);
        }
        
        query2=serverInput.nextLine();
        if(query2.matches("Distance|distance")){
            Distance dis2 = new Distance();
            int distance = dis2.getDistance(city1,city2);
            serverMessage=("Distance to "+city2+" from "+city1+" = "+distance+"km");
            print.println(serverMessage);
        }
        
        else{
            Path p2 = new Path();
            String path = p2.getPath(city1, city2);
            serverMessage=("Path to "+city2+" from "+city1+" : via "+path);
            print.println(serverMessage);
        }
        
            String serverM="Do You want to find again, Type \033[0;1m Again \033[0;0m to find again or type \033[0;1m Quit \033[0;0m to exit";
            print.println(serverM);
            
            endMessage=serverInput.nextLine();

            if(endMessage.matches("Quit|quit")){
                thanksMessage = "Thank you for using my services! Come back again";
                print.println(thanksMessage);
                server.close();
                print.close();
                serverInput.close();
            }
            
            else{
                againMessage = "Server: Send your current city";
                print.println(againMessage);
            }
        
        }
        
        while(endMessage.matches("Again|again")); //do while until client application is over

    }
}

