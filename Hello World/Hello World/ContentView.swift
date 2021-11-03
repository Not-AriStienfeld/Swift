//
//  ContentView.swift
//  Hello World
//
//  Created by Ari Steinfeld (student LM) on 10/27/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("wallpaperflare.com_wallpaper")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .saturation(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                .contrast(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)

                
            Text("Goodbye, world!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .padding()
                
                
               
            
            
                
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}
