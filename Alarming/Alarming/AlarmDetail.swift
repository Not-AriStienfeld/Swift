//
//  AlarmDetail.swift
//  Alarming
//
//  Created by Ari Steinfeld (student LM) on 11/23/21.
//

import SwiftUI

struct AlarmDetail: View {
    @Binding var alm : Alarm
    
    var body: some View {
        VStack {
            Spacer()

            TextField("Time", text: $alm.time)
                .padding(10)
            Spacer()
            TextField("Color", text: $alm.color)
                .padding(10)

            Spacer()
            TextField("Sound", text: $alm.sound)
                .padding(10)

            Spacer()
            Toggle(isOn: $alm.isOn, label: {
                Text("On/Off")
            })
            Picker("Times", selection: $alm.time){
                ForEach(Times.allCases) { t in
                    Text(t.rawValue.capitalized)
                }
            }

        }
    }
}

struct AlarmDetail_Previews: PreviewProvider {
    static var previews: some View {
        AlarmDetail(alm: Binding.constant(Alarm()))
    }
}

enum Times: String, CaseIterable, Identifiable{
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case eleven
    case twelve
    
    
    var id: String {self.rawValue}
}
