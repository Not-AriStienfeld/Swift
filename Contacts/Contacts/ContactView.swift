//
//  ContactView.swift
//  Contacts
//
//  Created by Ari Steinfeld (student LM) on 11/10/21.
//

import SwiftUI


struct ContactView: View {
    var me : Contact
    var body: some View {
        VStack{
            Text(me.name)
        
            Text(me.phoneNumber)
       
            Text(me.emailAddress)
        }
        .frame(minWidth: UIScreen.main.bounds.width - 40, idealWidth: UIScreen.main.bounds.width - 40, maxWidth: UIScreen.main.bounds.width - 40, minHeight: 100, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
        .cornerRadius(20)
        
        
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(me: Contact())
    }
}
