//
//  NewsSUIApp.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 12.03.2023.
//

import SwiftUI

@main
struct NewsSUIApp: App {
    
    @AppStorage("appearance") var appearence: Appearance = .automatic

    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .preferredColorScheme(appearence.getColorScheme())
        }
    }
}
