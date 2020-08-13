/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package client;

/**
 *
 * @author Isuru Sandaruwan
 */
public class validateCities extends Client{
    
    public static boolean validateCities(String City) {
        String[] cityList = { "Anuradhapura","Arugam Bay","Badulla","Batticaloa",
                              "Colombo","Dambulla","Ella","Galle","Habarana",
                              "Hikkaduwa","Jaffna","Kandy","Mirissa","Negombo","Nuwara Eliya",
                              "Polonnaruwa","Tangalle","Thissamaharama","Trincomalee",
        
                              "anuradhapura","arugam Bay","badulla","batticaloa",
                              "colombo","dambulla","ella","galle","habarana",
                              "hikkaduwa","jaffna","kandy","mirissa","negombo","nuwara eliya",
                              "polonnaruwa","tangalle","thissamaharama","trincomalee"
                               };
        
        for (String city : cityList) {
            if(city.equals(City)){
                return true;
            }
        }
        return false;
    }
}

