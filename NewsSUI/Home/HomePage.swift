//
//  HomePage.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct HomePage: View {
    
    @EnvironmentObject var viewModel: HomeViewModel
    
    @State var isRefresh: Bool = false
    var body: some View {
        GeometryReader { proxy in
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
                            viewModel.getNetwork()
                            isRefresh.toggle()
                        }
                    } label: {
                        Image(systemName: "arrow.clockwise")
                            .padding(.trailing,16)
                    }

                }
                VStack(alignment: .leading) {
                    ForEach(viewModel.news, id: \.id){ new in
                        HStack {
                            Image(systemName: "house")
                                .resizable()
                                .frame(width: 100,height: 100,alignment: .leading)
                            VStack(alignment: .leading) {
                                Text(new.title)
                                    .font(.headline)
                                Text(new.description)
                                    .font(.subheadline)
                                    .lineLimit(4)
                            }
                        
                        }
                        .frame(width: proxy.size.width - 40, height: 160)
                        .background(
                            Color.black.opacity(0.2)
                                .cornerRadius(16)
                        )
                        .onTapGesture {
                            print(new.id)
                        }
                    }
                }

                .padding(16)
            }
            .onSubmit {
                viewModel.getNetwork()
            }
//            .onAppear {
//                viewModel.getNetwork()
//        }
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
