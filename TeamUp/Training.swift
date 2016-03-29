//
//  Training.swift
//  TeamUp
//
//  Created by johan on 29/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import Foundation

class Training: NSObject {
    
    
    //MARK: - Attributes
    var date:NSDate?
    var day:String?
    var playersConfirmed:[Player]?
    
    
    //MARK: - Ctor
    init(date:NSDate, day:String, playersConfirmed:[Player]){
        self.date = date
        self.day = day
        self.playersConfirmed = playersConfirmed
    }
}
