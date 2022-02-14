//
//  HomeView.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 2/2/22.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView{
            PictureListView()
                .tabItem{
                    Label("Pictures", systemImage : "camera")}
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
