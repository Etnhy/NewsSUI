//
//  ContentView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 12.03.2023.
//

import SwiftUI

struct WelcomeView: View {
    @State var isRegistered: Bool = false
    
    @State var user = "admin"
    
    @ViewBuilder
    var body: some View {
        ZStack {
            BackgroundView()
            if user == "admin" {
                HomeView()
            } else {
                VStack {
                    if isRegistered {
                        SignInView()
                        ChangeSignUpInButton(isRegistered: $isRegistered)
                    } else {
                        SignUpView()
                        ChangeSignUpInButton(isRegistered: $isRegistered)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}



