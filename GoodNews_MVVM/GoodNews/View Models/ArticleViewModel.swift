//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Jitendra Tiwari on 30/08/22.
//

import Foundation
import UIKit

struct ArticleListViewModel {
    let articles:[Article]
}
extension ArticleListViewModel {
    var numberOdSections:Int {
        return 1;
    }
    
    func numberOfRowsInSection(_ section:Int) ->Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index :Int) -> ArticleViewModel{
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}
struct ArticleViewModel {
    private let article:Article
}

extension ArticleViewModel {
    init(_ article:Article) {
        self.article = article
    }
}
extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    var description:String {
        return self.article.description
    }
}
