//
//  HomePage.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct HomePage: View {
    
//    @State var TEXTimageName: String = "shevchenko"
//    @State var TESTnewsTitle: String = " News Title"
//    @State var TESTnewsDescription: String =
// """
// Тара́с Григо́рович Шевче́нко — український поет, прозаїк, мислитель, живописець, гравер, етнограф, громадський діяч. Національний герой і символ України. Діяч українського національного руху, член Кирило-Мефодіївського братства.
// 
// """
    @EnvironmentObject var viewModel: HomeViewModel
    

    var body: some View {
        GeometryReader { proxy in
            List {
                Section("Today") {
                    HStack {
                        Text(.now, style: .time)
                        Spacer()
                        Text(.now, style: .date)
                    }
                }
                
                Section("News") {
                    NewsCell(
                        newsTitle: $viewModel.TESTnewsTitle, newsDescription: $viewModel.TESTnewsDescription, newsImage: $viewModel.TEXTimageName)
//                    NewsCell(
//                        newsTitle: $TESTnewsTitle, newsDescription: $TESTnewsDescription, newsImage: $TEXTimageName)
//                    NewsCell(
//                        newsTitle: $TESTnewsTitle, newsDescription: $TESTnewsDescription, newsImage: $TEXTimageName)
                }
            }
            .frame(height: proxy.size.height - 70)
            .listStyle(.plain)
            .padding(16)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .environmentObject(HomeViewModel())
    }
}

struct NewsCell: View {
    @Binding var newsTitle: String
    @Binding var newsDescription: String
    @Binding var newsImage: String
    
    var body: some View {
        HStack {
            Image(newsImage)
                .resizable()
            VStack {
                Text(newsTitle)
                Text(newsDescription)
            }
        }
        .frame(height: 200)
    }
}
