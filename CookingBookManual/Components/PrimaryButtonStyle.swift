//
//  PrimaryButtonStyle.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI


struct PrimaryButtonStyle: ButtonStyle {
    func  makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 15, weight: .semibold))
            .padding(12)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .background(.green)
            .clipShape(.rect(cornerRadius: 8))
    }
}
