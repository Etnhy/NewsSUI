//
//  ContentView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 12.03.2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red,.orange,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("Hi !")
                    Text("Ти зареєстрован?")
                }
                .font(.title3)
                .background(
                    Color.black.opacity(0.2)
                        .frame(width: 300,height: 120)
                        .cornerRadius(20)
            )
                YesOrNotButtons()
            }

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct YesOrNotButtons: View {
    var body: some View {
        HStack {
            Spacer()
            RegisterOrLoginButto(buttonTitle: "Ні",action: {})
            Spacer()
            RegisterOrLoginButto(buttonTitle: "Так",action: {})
            Spacer()
        }
        
        .frame(width: 200,height: 120)
        .background(
            Color.clear
        )
    }
}

struct RegisterOrLoginButto: View {
    var buttonTitle: LocalizedStringKey
    var action: () -> Void
    
    var body: some View {
        Button(buttonTitle,action: action)
            .buttonStyle(.bordered)
            .foregroundColor(.black)
            .buttonBorderShape(.roundedRectangle(radius: 10))
            .controlSize(.regular)
    }
}
