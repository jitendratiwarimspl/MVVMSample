//
//  WebService.swift
//  GoodNews
//
//  Created by Jitendra Tiwari on 30/08/22.
//

import Foundation

class WebService {
    func getArticales(url: URL, completion: @escaping ([Article]?) -> ()){
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil {
                completion(nil)
            }else if let data = data {
                let str = String(decoding: data, as: UTF8.self)
                print(str)
                let articlelist =   try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articlelist = articlelist {
                    completion(articlelist.articles)
                }
                print(articlelist?.articles)
            }
        }.resume()
    }
}
