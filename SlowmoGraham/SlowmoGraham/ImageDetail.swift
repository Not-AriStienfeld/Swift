//
//  ImageDetail.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 11/3/21.
//

import SwiftUI

struct ImageDetail: View {
    
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea(.all)
        
    }
}

struct ImageDetail_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetail(image: "img2")
    }
}
