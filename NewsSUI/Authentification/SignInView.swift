//
//  SignInView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
            VStack {
                TextField("E-mail", text: $email)
                TextField("Password", text: $password)
                Button("Sign In", action: {
                    if email == "admin" && password == "admin" {
                        let window = UIApplication
                        .shared
                        .connectedScenes
                        .flatMap{($0 as? UIWindowScene)?.windows ?? []}.first { $0.isKeyWindow }
                        window?.rootViewController = UIHostingController(rootView: HomeView())
                    }
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
