/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package client;

import java.io.*;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;
/**
 *
 * @author Isuru Sandaruwan
 */
public class Client {
    static String startMessage;
    static String serverStartMessage;
    static String serverMessage;
    static String currentCity;
    static String destinationCity;
    static String query1;
    static String query2;
    static String serverM;
    static String endMessage;
    static String thanksMessage;
    static String servernextQueryMessage;
    static String againMessage;


    /**
     * @param args the command line arguments
     * @throws java.net.UnknownHostException
     */
    public static void main(String args[]) throws UnknownHostException, IOException{
        
	Scanner input = new Scanner(System.in);	
	Socket server = new Socket ("127.0.0.1",8024);
            //Give machine Ip and port which are trying to open a connection
	
        Scanner serverInput = new Scanner(server.getInputStream());// read data from the server
        PrintStream print = new PrintStream(server.getOutputStream());  //write data to server
        
        System.out.print("Client: ");
        startMessage=input.nextLine();
		
        while(!startMessage.matches("Hello|hello"))//validate start message
        {
            System.out.print("Say \033[0;1m Hello \033[0;0m to start the service\nClient: ");
            startMessage=input.nextLine();
        }
        
        print.println(startMessage);
        serverStartMessage = serverInput.nextLine();
        System.out.println("Server: "+serverStartMessage);
    
        do{
            System.out.print("Client: ");
            currentCity=input.nextLine();

            validateCities city = new validateCities();//validate cities
            while(!city.validateCities(currentCity)==true)
            {
                System.out.print("We can't find your city. Please check again\nClient: ");
                currentCity=input.nextLine();
            }

            print.println(currentCity);
            serverMessage = serverInput.nextLine();
            System.out.println("Server: "+serverMessage);

            System.out.print("Client: ");
            destinationCity=input.nextLine();

            while(!city.validateCities(destinationCity)==true)
            {
                System.out.print("We can't find your city. Please check again\nClient: ");
                destinationCity=input.nextLine();
            }

            print.println(destinationCity);
            serverMessage = serverInput.nextLine();
            System.out.println("Server: "+serverMessage);

            System.out.print("Client: ");
            query1=input.nextLine();

            while(!query1.matches("Distance|distance|Path|path"))//validare query 1
            {
                System.out.print("Type \033[0;1m Distance \033[0;0m or \033[0;1m Path \033[0;0m\nClient: ");
                query1=input.nextLine();
            }

            print.println(query1);
            serverMessage = serverInput.nextLine();
            servernextQueryMessage = serverInput.nextLine();
            
            System.out.println("Server: "+serverMessage);
            System.out.println("Server: "+servernextQueryMessage);

            System.out.print("Client: ");
            query2=input.nextLine();

            while(!query2.matches("Distance|distance|Path|path"))//validare query 2
            {
                System.out.print("Type \033[0;1m Distance \033[0;0m or \033[0;1m Path \033[0;0m\nClient: ");
                query2=input.nextLine();
            }

            print.println(query2);
            serverMessage = serverInput.nextLine();
            System.out.println("Server: "+serverMessage);

            serverM = serverInput.nextLine();
            System.out.println("Server: "+serverM);

            System.out.print("Client: ");
            endMessage = input.nextLine();

            //get user inputs for repeat code or quit from the code
            while(!endMessage.matches("Quit|quit|Again|again")){
               System.out.print("type \033[0;1m Again \033[0;0m to find again or type \033[0;1m Quit \033[0;0m to exit\nClient: ");
               endMessage = input.nextLine(); 
            }
            
            print.println(endMessage);
            
            if(endMessage.matches("Again|again")){
                againMessage = serverInput.nextLine();
                System.out.println("\n"+againMessage);
            }
            
        }
        
        while(endMessage.matches("again|Again")); //do while until client needs to exit

        System.out.println("");//final message
        if(endMessage.matches("Quit|quit")){
            thanksMessage = serverInput.nextLine();
            System.out.println("Server: " +thanksMessage);
            server.close();
            serverInput.close();
            print.close();
        }
    }
    
}
