//
//  FirebaseFunctions.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 2/3/22.
//

import Foundation
import FirebaseAuth

struct FirebaseFunctions{
    static func authenticate(email : String, password : String, completion: @escaping (Bool) -> ()){
        Auth.auth().createUser(withEmail: email, password: password){ user, error in
            if let _ = user {
                print("User Created!")
                completion(true)
                return
            }else{
                print(error.debugDescription)
                completion(false)
                return
            }
            
        }
        
    
    }
}
