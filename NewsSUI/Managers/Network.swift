//
//  Network.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 15.03.2023.
//

import Foundation
import Alamofire

protocol NetworkLayer: AnyObject {
    func getNews(categories: String,completion: @escaping(Result<NewsModel, AFError>) -> ())
}

class Network: ObservableObject, NetworkLayer {
    
    
    func getNews(categories: String, completion: @escaping (Result<NewsModel, AFError>) -> ()) {
        let url = "https://newsapi.org/v2/everything?q=\(categories)&apiKey=3b7a57f2d0e3400e9193cd86f1ba0fb5"
        downloadJson(url: url, completion: completion)
        
    }
    
    private func downloadJson<T:Decodable>(url: String, completion:@escaping(Result<T,AFError>)-> Void) {
        AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil, interceptor: nil, requestModifier: {
            JSONResponse in
            JSONResponse.timeoutInterval = 10
        }).validate(statusCode: 200..<201).responseDecodable(of: T.self) { responseDecodable in
            switch responseDecodable.result {
            case .success(let response):
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
/*
 //https://newsapi.org/v2/everything?q=animals&apiKey=3b7a57f2d0e3400e9193cd86f1ba0fb5 WORKs
 //https://newsapi.org/v2/top-headlines/sources?category=science&apiKey=3b7a57f2d0e3400e9193cd86f1ba0fb5
 //3b7a57f2d0e3400e9193cd86f1ba0fb5


 */
