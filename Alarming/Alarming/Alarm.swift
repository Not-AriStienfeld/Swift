//
//  Alarm.swift
//  Alarming
//
//  Created by Ari Steinfeld (student LM) on 11/11/21.
//

import Foundation

class Alarm : Identifiable{
    
    var id = UUID()
    var time : String
    var color : String
    var sound : String
    var isOn : Bool = true
    
    
    init(time : String = "12:21", color : String = "chartruce", sound : String = "bell"){
        self.time = time
        self.color = color
        self.sound = sound
    }
   
    
    
}
