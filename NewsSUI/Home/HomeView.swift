//
//  HomeView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct HomeView: View {
//    init() {
//        UITabBar.appearance().backgroundColor = .white
////        UITabBar.appearance().selectedItem?.badgeColor = .orange
//    }
    
    @State private var isSelectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $isSelectedTab) {
                    HomePage()
                        .environmentObject(HomeViewModel())
                        .tabItem {
                            Label("Home", systemImage: "house")
                                
                                .frame(width: 40,height: 30)
                        }
                        .tag(0)
                    Settings()
                        .tabItem {
                            Label("Settings", systemImage: "gear")
                                .foregroundColor(.orange)
                        }
                        .tag(1)
                }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
