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

        }
    }
}

struct AlarmDetail_Previews: PreviewProvider {
    static var previews: some View {
        AlarmDetail(alm: Binding.constant(Alarm()))
    }
}
