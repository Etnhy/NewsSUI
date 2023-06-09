//
//  HomePage.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct HomePage: View {
    
    @EnvironmentObject var viewModel: HomeViewModel
    @State private var showDetailView: Bool = false

    @State var isRefresh: Bool = false
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                BackgroundView()
                    .blur(radius: 0.1)
                ScrollView {
                    HStack {
                        Spacer()
                        Text("News")
                            .font(.title.bold())
                            .padding(.leading, 16)
                        Spacer()
                        Button {
                            isRefresh.toggle()
                            if isRefresh {
                                viewModel.getNetwork(categories: "animals")
                                isRefresh.toggle()
                            }
                        } label: {
                            Image(systemName: "arrow.clockwise")
                                .padding(.trailing,16)
                        }
                    }
                    NewsDisplay(news: $viewModel.news,geometryProxy: proxy)
                        .onTapGesture {
                            showDetailView.toggle()
                        }
                        .sheet(isPresented: $showDetailView) {
                            DetailNewsView()
                        }
                }
                .onAppear {
                    viewModel.getNetwork(categories: "cars")
            }
            }
        }
    }
}


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .environmentObject(HomeViewModel())
    }
}
struct NewsDisplay: View {

    @Binding var news: [Articles]
     var geometryProxy: GeometryProxy
    
    @AppStorage("appearance") var appearance: Appearance = .automatic

    var body: some View {
//        ZStack {
//            BackgroundView()
            VStack {
                ForEach(news, id: \.id){ new in
                    HStack {
                        AsyncImage(url: URL(string: new.urlToImage ?? "")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }.frame(width: 120,height: 120)
                        VStack(alignment: .leading) {
                            Text(new.title)
                                .font(.headline)
                            Text(new.description)
                                .font(.subheadline)
                                .lineLimit(4)
                        }
                    }
                    .frame(height: 160)

                    .overlay {
                        Color.gray.opacity(0.2)
                            .cornerRadius(16)
                            .frame(width: geometryProxy.size.width - 16)
                    }
                }
            }

            .padding(16)
        .frame(width: geometryProxy.size.width)
//        }
    }
}
