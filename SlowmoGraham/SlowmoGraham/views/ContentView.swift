//
//  ContentView.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 11/3/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userInfo : User
    var body: some View {
        Group{
            if (userInfo.loggedIn){
                HomeView()
            }else{
                LoginView()
            }
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

