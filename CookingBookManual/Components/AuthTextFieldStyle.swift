//
//  AuthTextFieldStyle.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

struct AuthTextFieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        VStack {
            configuration
                .font(.system(size: 14))
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled(true)
            Rectangle()
                .fill(.border)
                .frame(height: 1)
                .padding(.bottom, 15)
        }
    }
}
