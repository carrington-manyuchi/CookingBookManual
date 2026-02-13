//
//  AuthTextFieldView.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI


struct AuthTextFieldView: View {
    @Binding var inputTextField: String
    
    var body: some View {
        VStack {
            TextField("Email", text: $inputTextField)
                .font(.system(size: 14))
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
            
            Rectangle()
                .fill(.border)
                .frame(height: 1)
                .padding(.bottom, 15)
        }
    }
}
