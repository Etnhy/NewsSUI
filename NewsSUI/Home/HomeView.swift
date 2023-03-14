//
//  HomeView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct HomeView: View {
    init() {
        UITabBar.appearance().backgroundColor = .black
        UITabBar.appearance().selectedItem?.badgeColor = .orange
    }
    var body: some View {
        ZStack {
            BackgroundView()
            TabView {
                HomePage()
                    .environmentObject(HomeViewModel())
                    .tabItem {
                        Label("Home", systemImage: "house")
                            .foregroundColor(.orange)
                    }
                
                Settings()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                            .foregroundColor(.orange)
                    }
            }
            .tabViewStyle(.page)
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
