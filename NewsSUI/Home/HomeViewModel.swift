//
//  HomeViewModel.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    
   private var network: Network = Network()
    //GET https://newsapi.org/v2/top-headlines/sources?country=usapiKey=3b7a57f2d0e3400e9193cd86f1ba0fb5
    @Published var news: [Articles] = []

    
    func getNetwork(categories: String) {
        print("GET NEWS")
        network.getNews(categories: categories) { result in
            switch result {
            case .success(let success):
                self.news = success.articles
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
}
