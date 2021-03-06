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
    var barPoints : Int?
    var phone : String?
    
    
    //MARK: - Constructors
    init(fName:String, lName:String, birthdate:NSDate, position:String, gamesPlayed:Int, barPoints:Int, phone:String){
        self.fName = fName
        self.lName = lName
        self.birthdate = birthdate
        self.position = position
        self.gamesPlayed = gamesPlayed
        self.barPoints = barPoints
        self.phone = phone
    }
    
    
    //MARK: - Custom Functions
    func getAge(birthdate:NSDate) -> Int {
        return 25
    }

}
