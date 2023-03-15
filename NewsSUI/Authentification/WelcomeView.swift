//
//  ContentView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 12.03.2023.
//

import SwiftUI

enum Auth {
    case signIn
    case signUp
}

struct WelcomeView: View {
    @State var isRegistered: Bool = false
    
    @State var user = "admin"
    @State var authState = Auth.signIn
    
    @ViewBuilder
    var body: some View {
        ZStack {
            BackgroundView()
            if user == "admin2" {
                HomeView()
            } else {
                VStack {
                    switch authState {
                    case .signIn:
                        SignInView()
                        Button("To Sign Up") {
                            authState = Auth.signUp
                        }
                    case .signUp:
                        SignUpView()
                        Button("To Sign In") {
                            authState = Auth.signIn
                        }
                    }
                }
                .foregroundColor(Color.black)
                .buttonStyle(.bordered)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

