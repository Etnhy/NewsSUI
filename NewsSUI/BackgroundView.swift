//
//  BackgroundView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 14.03.2023.
//

import SwiftUI

struct BackgroundView: View {
    @AppStorage("appearance") var appearence: Appearance = .automatic

    var body: some View {
        if appearence.getColorScheme() == .light {
            LinearGradient(colors: [.orange,.red,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
        } else {
            LinearGradient(colors: [.gray,.black,.purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
        }

    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
