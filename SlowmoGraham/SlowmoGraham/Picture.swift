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
    
    init(_ image: String = "img1"){
        self.image = image
    }
    
    
    
}
