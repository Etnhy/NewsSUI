//
//  DetailNewsView.swift
//  NewsSUI
//
//  Created by Евгений Маглена on 18.03.2023.
//

import SwiftUI

struct DetailNewsView: View {
    @Environment(\.dismiss) var dismiss
    
    

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("exit") {
            dismiss()
        }
    }
}

struct DetailNewsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailNewsView()
    }
}
