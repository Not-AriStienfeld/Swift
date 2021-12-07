//
//  AlarmView.swift
//  Alarming
//
//  Created by Ari Steinfeld (student LM) on 11/11/21.
//

import SwiftUI

struct AlarmView: View {
    @Binding var alm : Alarm
    
    var body: some View {
        HStack{
            Spacer()
            Text("\(alm.time)")
                .foregroundColor(alm.isOn ? Color.green : Color.red)
                
                
            Spacer()
            
        }
        
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView(alm: Binding.constant(Alarm()))
    }
}
