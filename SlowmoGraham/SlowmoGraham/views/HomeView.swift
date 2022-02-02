//
//  HomeView.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 2/2/22.
//

import SwiftUI

struct HomeView: View {
    @ State private var pictures : [Picture]  = [Picture("img1"), Picture("img2"), Picture("img3"), Picture("img4"), Picture("img5")]
    init(){
        Theme.navigationBarColors(background: .clear, titleColor: UIColor(red: 255, green: 154, blue: 62, alpha: 1))
    }
    var body: some View {
        NavigationView{
            List(pictures.indices){ p in
                
                NavigationLink(
                    destination: ImageEditView(picture: self.$pictures[p]),
                    label: {
                        ImageDetail(picture: self.$pictures[p])
                    })
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
