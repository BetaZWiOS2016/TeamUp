//
//  Player.swift
//  TeamUp
//
//  Created by johan on 18/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import Foundation

class Player {

    //MARK: - Attributes
    var fName : String?
    var lName : String?
    var birthdate : NSDate?
    var position : String?
    var profilePic : String?
    var gamesPlayed : Int?
    
    
    //MARK: - Constructors
    init(fName:String, lName:String, birthdate:NSDate, position:String, profilePic:String, gamesPlayed:Int){
        self.fName = fName
        self.lName = lName
        self.birthdate = birthdate
        self.position = position
        self.profilePic = profilePic
        self.gamesPlayed = gamesPlayed
    }
    
    
    //MARK: - Custom Functions
    func getAge(birthdate:NSDate) -> Int {
        return 25
    }

}
