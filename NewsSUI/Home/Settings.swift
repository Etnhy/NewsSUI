//
//  Settings.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct Settings: View {
    
    @AppStorage("appearance") var appearance: Appearance = .automatic

    
    var body: some View {
        VStack {
            Text("Settings")
                .font(.largeTitle).bold()
                .padding(.bottom, 8)
            
            Section {
                VStack {
                    Picker("", selection: $appearance) {
                        ForEach(Appearance.allCases) { appearance in
                            Text(appearance.name).tag(appearance)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            } header: {
                Text("Appearence")
                    .multilineTextAlignment(.leading)
                    
                    
                    
            }
            Spacer()
        } // VStack
        .padding(16)
        .listStyle(.plain)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
