//
//  User.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 2/2/22.
//

import Foundation

class User: ObservableObject{
    var id = UUID()
    var email : String
    var name : String
    var password : String
    @Published var loggedIn : Bool
    
    init(email: String = "", name : String = "", loggedIn : Bool = false, password : String = ""){
        self.email = email
        self.name = name
        self.loggedIn = loggedIn
        self.password = password
    }
}
