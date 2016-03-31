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
    var games: NSDictionary
    var playersConfirmed: NSDictionary?
    var nextGame: NSDictionary?
    var rootRef = Firebase(url:"https://kliefhamers.firebaseio.com")
    var ref: Firebase?
    
    init(){
        self.teams = [String: Team]()
        self.players = [String: Player]()
        self.games = [String: Game]()
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
                            print(key)
                            print(value["HomeTeamScore"].intValue)
                            //self.games[key] = Game(homeTeam: Team, awayTeam: <#T##Team#>, homeTeamScore: <#T##Int#>, awayTeamScore: <#T##Int#>, addressPitch: <#T##String#>, addressBar: <#T##String#>, pitchTime: <#T##String#>, wpTime: <#T##String#>, kickOffTime: <#T##String#>, playersConfirmed: <#T##[Player]#>)
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
    
    func logUser(email: String, passwd: String) -> Bool{
        //self.userLogged = Player(fName: <#T##String#>, lName: <#T##String#>, birthdate: <#T##NSDate#>, position: <#T##String#>, profilePic: <#T##String#>, gamesPlayed: <#T##Int#>, barPoints: <#T##Int#>, phone: <#T##String#>)
        return true
    }
    
}
