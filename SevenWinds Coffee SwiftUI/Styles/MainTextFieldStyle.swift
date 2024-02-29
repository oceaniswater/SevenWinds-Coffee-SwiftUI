//
//  MainTextFieldStyle.swift
//  SevenWinds Coffee SwiftUI
//
//  Created by Mark Golubev on 29/02/2024.
//

import SwiftUI

struct MainTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 8).strokeBorder(Color.brown, lineWidth: 1))
            .foregroundColor(.black)
    }
}
