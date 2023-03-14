//
//  HomeViewModel.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    
    @Published var TEXTimageName: String = "shevchenko"
    @Published var TESTnewsTitle: String = " News Title"
    @Published var TESTnewsDescription: String =
 """
 Тара́с Григо́рович Шевче́нко — український поет, прозаїк, мислитель, живописець, гравер, етнограф, громадський діяч. Національний герой і символ України. Діяч українського національного руху, член Кирило-Мефодіївського братства.
 
 """
}
