//
//  WebView.swift
//  JSON Decoding 1
//
//  Created by Swope, Thomas on 12/16/21.
//

import SwiftUI
import WebKit

struct SwiftUIWebView : UIViewRepresentable{
    
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        var prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = url else{
            return
        }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
    
}
