//
//  ContentView.swift
//  stack overflow help
//
//  Created by Ari Steinfeld (student LM) on 1/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AddMessagePreset()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

struct AddMessagePreset: View {
    let presetsList = [
        Preset(name: "preset text 1"),
        Preset(name: "preset text 2"),
        Preset(name: "preset text 3")
    ]
    
    var body: some View {
        
        List(presetsList) { singlePresetModel in
            SinglePresetChild (presetModel: singlePresetModel)
        }
    }
}



import SwiftUI

struct Preset: Identifiable {
    let id = UUID()
    let name: String
}

struct SinglePresetChild: View {
    
    var presetModel: Preset
    
    var body: some View {
        
        Text("Preset Name \(presetModel.name)")
    }
}

