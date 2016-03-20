//
//  Team.swift
//  TeamUp
//
//  Created by johan on 19/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import Foundation

class Team {

    
    //MARK: - Attributes
    var colors:String?
    var addressPitch:String?
    var addressBar:String?
    var ranking:Int?
    
    
    //MARK: - Ctor
    init(colors:String, addressPitch:String, addressBar:String, ranking:Int){
        self.addressBar = addressBar
        self.addressPitch = addressPitch
        self.colors = colors
        self.ranking = ranking
    }
    
    
    //MARK: - Custom Functions
    
}
