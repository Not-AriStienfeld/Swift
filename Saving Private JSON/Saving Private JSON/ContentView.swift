//
//  ContentView.swift
//  Saving Private JSON
//
//  Created by Ari Steinfeld (student LM) on 12/15/21.
//

import SwiftUI
import struct Kingfisher.KFImage

struct ContentView: View {
    @StateObject var fetchData = FetchData()
    
    var body: some View {
        NavigationView{
            List(fetchData.responses.articles){a in
                NavigationLink(destination: SwiftUIWebView(url: URL(string:a.urlToImage ??  "https://icon-library.com/images/not-found-icon/not-found-icon-28.jpg"))) {
                    HStack{
                        Group{
                            if let img = a.urlToImage{
                                KFImage(URL(string:img))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                
                            }
                            else{
                                Image("nope")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .accentColor(.white)
                            }
                        }
                        Text(a.title ?? "Florida man holds Tim Cook captive; Forces him to make rechargable airtags.")
                        
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
