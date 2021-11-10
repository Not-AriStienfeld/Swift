//
//  Contact.swift
//  Contacts
//
//  Created by Ari Steinfeld (student LM) on 11/10/21.
//

import Foundation


class Contact{
    
    var name : String
    var phoneNumber : String
    var emailAddress : String
    
    init(name : String = "Ari Appleseed", phoneNumber : String  = "8675309", emailAddress : String = "apple@icloud.com"){
        self.name = name
        self.phoneNumber = phoneNumber
        self.emailAddress = emailAddress
    }
    
}
