//
//  picture.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 11/9/21.
//

import Foundation

class Picture: Identifiable{
    
    var image : String
    var likes : Int = 0
    var id = UUID()
    
    init(_ image: String = "img1"){
        self.image = image
    }
    
    
    
}
