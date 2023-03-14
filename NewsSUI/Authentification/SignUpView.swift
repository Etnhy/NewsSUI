//
//  SignUpView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct SignUpView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var repeatPassword: String = ""
    var body: some View {
            VStack {
                TextField("E-mail", text: $email)
                TextField("Password", text: $password)
                TextField("Repeat password", text: $repeatPassword)
                
                Button {
                    ///
                } label: {
                    Text("Sign Up")
                }
                .buttonStyle(.bordered)
            }
            .frame(height: 160)
            .textFieldStyle(.roundedBorder)
            .padding(16)
        }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .background(Color.orange)
    }
}
