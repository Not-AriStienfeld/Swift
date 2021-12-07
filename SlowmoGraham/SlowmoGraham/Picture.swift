//
//  picture.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 11/9/21.
//

import Foundation

struct Picture: Identifiable{
    
    var image : String
    var visible : Bool = true
    var likes : Int = 0
    var id = UUID()
    var blur : Float = 0.0
    var contrast : Float = 1.0
    var saturation : Float = 1.0
    var catagory : Catagory = .misc
    var modifier : Modifier = .one
    var brightness : Double =  0.0
    
    init(_ image: String = "img1"){
        self.image = image
    }
    
    
    
}

enum Catagory: String, CaseIterable, Identifiable{
    case olympic
    case outdoors
    case misc
    
    
    
    var id: String {self.rawValue}
}


enum Modifier: String, CaseIterable, Identifiable{
    case one
    case two
    case three
    case four
    case five
    
    var id: String {self.rawValue}
}
