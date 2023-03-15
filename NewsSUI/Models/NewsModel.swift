//
//  NewsModel.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 15.03.2023.
//

import Foundation


struct NewsModel: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Articles]
    
    enum CodingKeys: CodingKey {
        case status
        case totalResults
        case articles
    }

}

struct Articles: Codable, Identifiable {
    var id = UUID()
    
    let author: String?
    let title: String
    let description: String
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String
    
    enum CodingKeys: CodingKey {
        case author
        case title
        case description
        case url
        case urlToImage
        case publishedAt
        case content
    }

}
/*
 "author": "Matt Reynolds",
             "title": "Cute Animals Are Overrated. Let’s Save the Weird Ones",
             "description": "One million species are at risk of extinction, but a handful of charismatic creatures get all the hype. A new conservation strategy has a different focus.",
             "url": "https://www.wired.com/story/animal-conservation-metric/",
             "urlToImage": "https://media.wired.com/photos/63fe6367c13aaf7a78c79337/191:100/w_1280,c_limit/mountainpygmypossum_science_BCDJ6K.jpg",
             "publishedAt": "2023-02-28T20:27:45Z",
             "content": "There are a lot of species out there that are overlooked, and when you get to know them they are just as charismatic and beautiful as the ones were aware of, says Gumbs. According to the EDGE2
 */
//struct NewsModel: Codable, Identifiable {
//    var id: UUID
//    let title: String
//    let description: String
//
//}
