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
            
            VStack{
                Text("Goodbye, world!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                    .padding()
                Spacer()
                Text("why")
                    .scaleEffect(/*@START_MENU_TOKEN@*/4.0/*@END_MENU_TOKEN@*/)
                    .accentColor(.blue)
                Spacer()
                Text("git pull")
                    .scaleEffect(6.0)
                    .foregroundColor(Color.green)
                
                Spacer()
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "square.fill")
                    })
                    .accentColor(.orange)
                    .saturation(2.0)
                    .scaleEffect(6)
                    .opacity(0.6)
                    .contrast(0.1)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "triangle.fill")
                    })
                    .accentColor(.black)
                    .saturation(8.0)
                    .scaleEffect(7.0)
                    .opacity(0.9)
                    .contrast(2.0)
                    
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "heart.fill")
                    })
                    .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .saturation(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                    .scaleEffect(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .contrast(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    
                    
                    
                    
                }
                
                
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}
