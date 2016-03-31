//
//  Game.swift
//  TeamUp
//
//  Created by johan on 19/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import Foundation

class Game {

    
    //MARK: - Attributes
    var homeTeam:Team?
    var awayTeam:Team?
    var matchDay:NSDate?
    var homeTeamScore:Int?
    var awayTeamScore:Int?
    var namePitch:String?
    var nameBar:String?
    var addressPitch:String?
    var addressBar:String?
    var pitchTime:String?
    var wpTime:String?
    var kickOffTime:String?
    var playersConfirmed:[Player]?
    
    
    //MARK: - Ctor
    init(homeTeam:Team, awayTeam:Team, homeTeamScore:Int, awayTeamScore:Int, addressPitch:String, addressBar:String, pitchTime:String, wpTime:String, kickOffTime:String, matchDay:NSDate){
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.homeTeamScore = homeTeamScore
        self.awayTeamScore = awayTeamScore
        self.addressPitch = homeTeam.addressPitch
        self.addressBar = homeTeam.addressBar
        self.nameBar = homeTeam.barName
        self.namePitch = homeTeam.pitchName
        self.pitchTime = pitchTime
        self.kickOffTime = homeTeam.kickOffTime
        self.wpTime = wpTime
        self.matchDay = matchDay
        
    }
    
    init(){}
    
    
    //MARK: - Custom Methods
    func description()->String{
        return " \(self.homeTeam)  vs \(self.awayTeam) +  at \(self.matchDay)"
    }
    
}
