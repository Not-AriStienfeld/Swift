//
//  ContactDetail.swift
//  Contact Example
//
//  Created by Swope, Thomas on 11/19/21.
//

import SwiftUI

struct ContactDetail: View {
    
    var contact: Contact
    
    var body: some View {
        VStack{
            Image("bob").resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 240, height: 240, alignment: .center)
            Text(contact.name)
            Text(contact.phoneNumber)
            Text(contact.emailAddress)
        }
        .frame(minWidth: UIScreen.main.bounds.width - 40, idealWidth: UIScreen.main.bounds.width - 40, maxWidth: UIScreen.main.bounds.width - 40, minHeight: 100, idealHeight: 100, maxHeight: 400, alignment: .center)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(20.0)
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: Contact())
    }
}


