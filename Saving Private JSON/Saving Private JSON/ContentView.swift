//
//  ContentView.swift
//  Saving Private JSON
//
//  Created by Ari Steinfeld (student LM) on 12/15/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var fetchData = FetchData()
    
    var body: some View {
        List(fetchData.responses.articles){a in
            Text(a.title!)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
