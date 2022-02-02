//
//  LoginView.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 2/2/22.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var userInfo : User
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.background)
                .edgesIgnoringSafeArea(.all)
            VStack{
                TextField("email address", text: $userInfo.email)
                TextField("password", text: $userInfo.password)
                
                Button("Create Accound With Email"){
                    
                }
                
                Button ("Login"){
                    
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
