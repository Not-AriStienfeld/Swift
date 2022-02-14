//
//  PictureListView.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 2/9/22.
//

import SwiftUI

struct PictureListView: View {
    @ State private var pictures : [Picture]  =
        [Picture("img1"),
         Picture("img2"),
         Picture("img3"),
         Picture("img4"),
         Picture("img5")]
    init(){
        Theme.navigationBarColors(background: .clear, titleColor: .orange)
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
    }}

struct PictureListView_Previews: PreviewProvider {
    static var previews: some View {
        PictureListView()
    }
}
