//
//  ImageDetail.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 11/3/21.
//

import SwiftUI

struct ImageEditView: View {
    
    @Binding var picture: Picture
    
    var body: some View {
        VStack{
            ZStack{
                GeometryReader{ geo in
                    Image(picture.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: 400, alignment: .top)
                        .blur(radius: CGFloat(picture.blur))
                        .contrast(Double(picture.contrast))
                        .saturation(Double(picture.saturation))
                        .brightness(picture.brightness)
                                            
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
                .opacity( picture.visible ? 1.0 : 0.0)
            }
            .cornerRadius(20.0)
            .padding(.horizontal, 10)
            .frame(minWidth: 0, idealWidth: 300, maxWidth: .infinity, minHeight: 0, idealHeight: 400, maxHeight: 400, alignment: .center)
            

        }
        
        Group{
            if (picture.modifier.rawValue == "one"){
                HStack{
                    Text("Blur")
                    Slider(value: $picture.blur, in: 0...100)
                }
            }
            else if (picture.modifier.rawValue == "two"){
                HStack{
                    Text("Contrast")
                    Slider(value: $picture.contrast, in: 0...10)
                }
            }
            else if (picture.modifier.rawValue == "three"){
                HStack{
                    Text("Saturation")
                    Slider(value: $picture.saturation, in: 0...100)
                }
            }
            else if (picture.modifier.rawValue == "four"){
                HStack{
                    Text("Brightness")
                    Slider(value: $picture.brightness, in: 0...1)
                }
            }
            else if (picture.modifier.rawValue == "five"){
                Toggle(isOn: $picture.visible, label: {
                    Text("Likes Visible")
                })
            }
        }
        
        
        HStack{
            Picker("Moedifier", selection: $picture.modifier){
                Text("Blur").tag(Modifier.one)
                Text("Contrast").tag(Modifier.two)
                Text("Saturation").tag(Modifier.three)
                Text("Brightness").tag(Modifier.four)
                Text("Likes").tag(Modifier.five)
            }
        }
    }
}

struct ImageEditView_Previews: PreviewProvider {
    static var previews: some View {
        ImageEditView(picture: Binding.constant(Picture()))
    }
}
