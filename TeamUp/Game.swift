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
    var homeTeamScore:Int?
    var awayTeamScore:Int?
    var addressPitch:String?
    var addressBar:String?
    var hourPitch:String?
    var hourWP:String?
    var hourStart:String?
    var playersConfirmed:[Player]?
    
    
    //MARK: - Ctor
    init(homeTeam:Team, awayTeam:Team, homeTeamScore:Int, awayTeamScore:Int, addressPitch:String, addressBar:String, hourPitch:String, hourWP:String, hourStart:String, playersConfirmed:[Player]){
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.homeTeamScore = homeTeamScore
        self.awayTeamScore = awayTeamScore
        self.addressPitch = homeTeam.addressPitch
        self.addressBar = homeTeam.addressBar
        self.hourPitch = hourPitch
        self.hourStart = hourStart
        self.hourWP = hourWP
    }
    
    
}
