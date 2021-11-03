//
//  ContentView.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 11/3/21.
//

import SwiftUI

struct ContentView: View {
    private var pictures : [String] = ["img1", "img2", "img3"]
    @State private var likes : [Int] = [0, 0, 0]
    var body: some View {
        NavigationView{
            NavigationLink(
                destination: ImageDetail(image: pictures[0]),
                label: {
                    Text("Navigate")
                })
            VStack{
                ZStack{
                    GeometryReader{ geo in
                        Image(pictures[0])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    VStack{
                        HStack{
                            Button(action: {likes[0] += 1}, label: {
                                Image(systemName: "heart.fill")
                                    .font(.system(size: 56))
                            })
                            Spacer()
                            Text("\(likes[0])")
                                .font(.system(size: 56))
                            
                        }
                    }
                }
                ZStack{
                    GeometryReader{ geo in
                        Image(pictures[1])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    VStack{
                        HStack{
                            Button(action: {likes[1] += 1}, label: {
                                Image(systemName: "heart.fill")
                                    .font(.system(size: 56))
                            })
                            Spacer()
                            Text("\(likes[1])")
                                .font(.system(size: 56))
                            
                        }
                    }
                }
                ZStack{
                    GeometryReader{ geo in
                        Image(pictures[2])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    VStack{
                        HStack{
                            Button(action: {likes[2] += 1}, label: {
                                Image(systemName: "heart.fill")
                                    .font(.system(size: 56))
                            })
                            Spacer()
                            Text("\(likes[2])")
                                .font(.system(size: 56))
                            
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
