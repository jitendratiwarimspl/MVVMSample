//
//  Article.swift
//  GoodNews
//
//  Created by Jitendra Tiwari on 30/08/22.
//

import Foundation

struct ArticleList: Decodable {
    let articles:[Article]
}

struct Article: Decodable {
    let title :String
    let description: String
}
