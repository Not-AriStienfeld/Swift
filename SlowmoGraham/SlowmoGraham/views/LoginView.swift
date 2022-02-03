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
                HStack{
                    Image(systemName: "mail")
                    TextField("email address", text: $userInfo.email)
                }.padding().padding(.top, 50).foregroundColor(Color.buttonText)
                
                HStack{
                    Image(systemName: "lock")
                    SecureField("password", text: $userInfo.password)
                }.padding().foregroundColor(Color.buttonText)
                
                Spacer()

                Button("Create Accound With Email"){
                    FirebaseFunctions.authenticate(email: userInfo.email, password : userInfo.password)
                    { success in
                        if success{
                            userInfo.loggedIn = true
                        }
                    }
                }.padding()
               .frame(width: UIScreen.main.bounds.width - 100)
                .background(Color.buttonBackground)
                .foregroundColor(Color.buttonText)
                .cornerRadius(30)
                
                
                Button ("Login"){
                    
                }.padding()
                .frame(width: UIScreen.main.bounds.width - 100)
                .background(Color.buttonBackground)
                .foregroundColor(Color.buttonText)
                .cornerRadius(30)
                .padding(.bottom, 100)

                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
