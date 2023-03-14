//
//  ChangeSignUpInButtons.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct ChangeSignUpInButton: View {
    @Binding var isRegistered: Bool
    var body: some View {
        Button(isRegistered ? "To Sign Up" : "To Sign In") {
            isRegistered.toggle()
        }
    }
}
