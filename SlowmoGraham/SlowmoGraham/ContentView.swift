//
//  ContentView.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 11/3/21.
//

import SwiftUI

struct ContentView: View {
    @ State private var pictures : [Picture]  = [Picture("img1"), Picture("img2"), Picture("img3"), Picture("img4"), Picture("img5")]
    
    var body: some View {
        NavigationView{
            List(pictures.indices){ p in
                
                NavigationLink(
                    destination: ImageEditView(picture: self.$pictures[p]),
                    label: {
                        ImageDetail(picture: self.$pictures[p])
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

