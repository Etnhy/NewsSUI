//
//  SignInView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = "admin"
    @State var password: String = "admin"
    
    
    @EnvironmentObject var authState: AppState
    
    var body: some View {
            VStack {
                TextField("E-mail", text: $email)
                TextField("Password", text: $password)
                Button("Sign In", action: {
                    authState.hasAuth = true
                })
                .foregroundColor(Color.black)
                .buttonStyle(.bordered)
            }
            .frame(height: 160)
            .buttonStyle(.bordered)
            .textFieldStyle(.roundedBorder)
            .padding(16)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .background(Color.black)
    }
}

