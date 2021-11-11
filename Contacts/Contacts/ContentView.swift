//
//  ContentView.swift
//  Contacts
//
//  Created by Ari Steinfeld (student LM) on 11/10/21.
//

import SwiftUI

struct ContentView: View {
    var contacts = [Contact(name: "Ari", phoneNumber: "610-517-9060", emailAddress: "s016893@students.lmsd.org"),  Contact(name: "John Doe", phoneNumber: "111-111-1111", emailAddress: "address@domain.webending"), Contact()]
    
    var body: some View {
        List(contacts){ contact in
            ContactView(me: contact)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
