//
//  Datasource.swift
//  TeamUp
//
//  Created by johan on 29/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit
import Firebase
import SwiftyJSON

class TeamAppController {

    static let sharedInstance = TeamAppController()
    
    private(set) var userLogged: Player?
    var teams: [String: Team]
    var players: [String: Player]
    var games: [String: Game]
    var trainings: [String: Training]
    var playersConfirmed: [String: Player]
    var nextGame: Game
    var rootRef = Firebase(url:"https://kliefhamers.firebaseio.com")
    var ref: Firebase?
    
    init(){
        self.teams = [String: Team]()
        self.players = [String: Player]()
        self.games = [String: Game]()
        self.trainings = [String: Training]()
        self.playersConfirmed = [String: Player]()
        self.nextGame = Game()
    }
    
    //MARK: - Custom Methods
    
    
    func fillGames(){
        if (self.games.count == 0){
            ref = Firebase(url:"https://kliefhamers.firebaseio.com/Games")
            ref!.observeEventType(.Value, withBlock: { snapshot in
                if snapshot.value is NSNull {}
                else{
                    let result = snapshot.value
                    let json = JSON(result)
  
                    if let dictionary = json.dictionary{
                        for (key, value) in dictionary{
                            var homeTeam:Team = Team()
                            var awayTeam:Team = Team()
                            for(str, waarde) in self.teams{
                                
                                if(str.containsString(value["HomeTeam"].description)){
                                    homeTeam = waarde
                                }
                            }
                                for(str, waarde) in self.teams{
                                    if(str.containsString(value["AwayTeam"].description)){
                                        awayTeam = waarde
                                    }
                            
                            }
                            self.games[key] = Game(homeTeam: homeTeam, awayTeam: awayTeam, homeTeamScore: value["HomeTeamScore"].intValue, awayTeamScore: value["AwayTeamScore"].intValue, addressPitch: homeTeam.addressPitch!, addressBar: homeTeam.addressBar!, pitchTime: value["pitchTime"].description , wpTime: value["wpTime"].description, kickOffTime: homeTeam.kickOffTime!, matchDay: self.stringToDate(value["matchDay"].description))
                            
                        }

                    }
                                        //self.games = snapshot.value as! [String : Game]
                }
                
                }, withCancelBlock: { error in
                    print(error.description)
                    
            })

            
        }
            
        else{
            print("Games array is not empty")
        
        }
    }
    
    
    func fillTeams(){
        if (self.teams.count == 0){
            ref = Firebase(url:"https://kliefhamers.firebaseio.com/Teams")
            ref!.observeEventType(.Value, withBlock: { snapshot in
                if snapshot.value is NSNull {}
                else{
                    let result = snapshot.value
                    let json = JSON(result)
                    
                    if let dictionary = json.dictionary{
                        for (key, value) in dictionary{
                            //print(key, value)
                            //print(value["HomeTeamScore"].intValue)
                            self.teams[key] = Team(name: value["Name"].description, color1: value["Color1"].description, color2: value["Color2"].description, addressPitch: value["AddressPitch"].description, addressBar: value["AddressBar"].description, contactPerson: value["ContactPerson"].description, email: value["Email"].description, phone: value["Phone"].description, pitchName: value["NamePitch"].description, barName: value["NameBar"].description, kickOffTime: value["KickOffTime"].description)
                            
                        }
                        
                    }
                    //self.games = snapshot.value as! [String : Game]
                }
                
                }, withCancelBlock: { error in
                    print(error.description)
                    
            })
            
    
        }
            
        else{
            print("Games array is not empty")
            
        }
    }

    
    
    func fillPlayers(){
        if (self.players.count == 0){
            ref = Firebase(url:"https://kliefhamers.firebaseio.com/Players")
            ref!.observeEventType(.Value, withBlock: { snapshot in
                if snapshot.value is NSNull {}
                else{
                    let result = snapshot.value
                    let json = JSON(result)
                    
                    if let dictionary = json.dictionary{
                        for (key, value) in dictionary{
                           
                            let date = self.stringToDate(value["birthday"].stringValue)
                            self.players[key] = Player(fName: value["fName"].description, lName: value["lName"].description, birthdate: date, position: value["position"].description, gamesPlayed: value["gamesPlayed"].intValue, barPoints: value["wpPoints"].intValue, phone: value["phone"].description)
                        }
                        
                    }
                   
                }
                
                }, withCancelBlock: { error in
                    print(error.description)
                    
            })
            
          
        }
            
        else{
            print("Games array is not empty")
            
        }
    }
    
    
    
    func fillTrainings(){
        if (self.trainings.count == 0){
            ref = Firebase(url:"https://kliefhamers.firebaseio.com/Trainings")
            ref!.observeEventType(.Value, withBlock: { snapshot in
                if snapshot.value is NSNull {}
                else{
                    let result = snapshot.value
                    let json = JSON(result)
                    
                    if let dictionary = json.dictionary{
                        for (key, value) in dictionary{
                            let date = self.stringToDate(value["Date"].description)
                            self.trainings[date.description] = Training(date: date, day: "Dag")
                            
                        }
                        
                    }
                    //self.games = snapshot.value as! [String : Game]
                }
                
                }, withCancelBlock: { error in
                    print(error.description)
                    
            })
            
            
        }
            
        else{
            print("Games array is not empty")
            
        }
    }

    
    
    func stringToDate (stringDate:String)-> NSDate{
        var stringDate2:String = "Error"
        if(stringDate.containsString("CEST")){
               stringDate2 = stringDate.stringByReplacingOccurrencesOfString("CEST ", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
        }
        if(stringDate.containsString("CET")){
            stringDate2 = stringDate.stringByReplacingOccurrencesOfString("CET ", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
        }
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "EEE MMM dd HH:mm:ss yyyy"
        
        let date = dateFormatter.dateFromString(stringDate2)!
      
        return date
    }
    
    
    func logUser(email: String, passwd: String) -> Bool{
        //self.userLogged = Player(fName: <#T##String#>, lName: <#T##String#>, birthdate: <#T##NSDate#>, position: <#T##String#>, profilePic: <#T##String#>, gamesPlayed: <#T##Int#>, barPoints: <#T##Int#>, phone: <#T##String#>)
        return true
    }
    
}
