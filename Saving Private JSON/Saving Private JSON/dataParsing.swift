//
//  dataParsing.swift
//  Saving Private JSON
//
//  Created by Ari Steinfeld (student LM) on 12/15/21.
//

import Foundation

class FetchData : ObservableObject{
    @Published var responses: Response = Response()
   
    init(){
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=6e5e6f556f9a4c83966324d93358dffe")!
        
        URLSession.shared.dataTask(with: url) { (data, response, errors) in
            
             guard let data = data else {return}
            
            
            
            let decoder = JSONDecoder()
                        if let response = try? decoder.decode(Response.self, from: data) {
                            DispatchQueue.main.async {
                                self.responses = response
                            }
                        }

            
        }.resume()
        
        
    }
}

struct Response: Codable{
    var totalResults : Int = 0
    var articles : [Article] = [Article]()
}

struct Article: Codable{
    var title : String?
    var url : String
}
extension Article: Identifiable{
    var id: String {return title!}
}
