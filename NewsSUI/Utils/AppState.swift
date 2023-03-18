//
//  AppState.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 18.03.2023.
//

import SwiftUI


class AppState: ObservableObject {
    @Published var hasAuth: Bool = false
    
    init(hasAuth: Bool) {
        self.hasAuth = hasAuth
    }
}

