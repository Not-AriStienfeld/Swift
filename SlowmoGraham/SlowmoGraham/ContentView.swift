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
        List(pictures){ picture in
            ImageDetail(picture: Binding.constant(picture))
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

