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
    var name:String?
    var color1:String?
    var color2:String?
    var addressPitch:String?
    var addressBar:String?
    var contactPerson:String?
    var email:String?
    var phone:String?
    var pitchName:String?
    var barName:String?
    var kickOffTime:String?
    
    
    //MARK: - Ctor
    init(name:String, color1:String, color2:String, addressPitch:String, addressBar:String, contactPerson:String, email:String, phone:String, pitchName:String, barName:String, kickOffTime:String){
        self.name = name
        self.color2 = color2
        self.addressBar = addressBar
        self.addressPitch = addressPitch
        self.color1 = color1
        self.contactPerson = contactPerson
        self.email = email
        self.phone = phone
        self.pitchName = pitchName
        self.barName = barName
        self.kickOffTime = kickOffTime
    }
    
    init(){}
    
    
    //MARK: - Custom Functions
    
}
