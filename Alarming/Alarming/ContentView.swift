//
//  ContentView.swift
//  Alarming
//
//  Created by Ari Steinfeld (student LM) on 11/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var alarming = [Alarm(time: "1:32"), Alarm(time: "2:54"), Alarm(time: "12:59"), Alarm(), Alarm(time: "2:59"), Alarm(time: "6:20"), Alarm(time: "7:40")]
    
    var body: some View {
        
        NavigationView{
            List(alarming.indices){index in
                NavigationLink(
                    destination: AlarmDetail(alm: self.$alarming[index]),
                    label: {
                        AlarmView(alm: self.$alarming[index])
                    })
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
