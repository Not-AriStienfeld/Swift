//
//  ImageDetail.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 11/3/21.
//

import SwiftUI

struct ImageDetail: View {
    
    @Binding var picture: Picture
    
    var body: some View {
        ZStack{
            GeometryReader{ geo in
                Image(picture.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width, height: 240, alignment: .top)
                    .blur(radius: CGFloat(picture.blur))
                    .contrast(Double(picture.contrast))
                
            }
            VStack{
                Spacer()
                HStack{
                    Button(action: {picture.likes += 1}, label: {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 56))
                            .foregroundColor(Color.white)
                    })
                    Spacer()
                    Text("\(picture.likes)")
                        .font(.system(size: 56))
                        .foregroundColor(Color.white)
                    
                }
            }
        }
        .cornerRadius(20.0)
        .padding(.horizontal, 10)
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 220, maxHeight: 240, alignment: .center)
    }
    
}

struct ImageDetail_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetail(picture: Binding.constant(Picture()))
    }
}
