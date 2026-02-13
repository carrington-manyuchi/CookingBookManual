//
//  PasswordComponentView.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

struct PasswordComponentView: View {
    
    @Binding var showPassword: Bool
    @Binding var password: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Password")
                .font(.system(size: 15))
            
            if showPassword {
                TextField("Password", text: $password)
                    .textFieldStyle(AuthTextFieldStyle())
                    .overlay(alignment: .trailing) {
                        Button {
                            showPassword = false
                        } label: {
                            Image(systemName: "eye")
                                .padding(.bottom)
                        }
                    }
            } else {
                VStack {
                    SecureField("Password", text: $password)
                        .font(.system(size: 14))
                    
                    Rectangle()
                        .fill(.border)
                        .frame(height: 1)
                        .padding(.bottom, 15)
                }
                .overlay(alignment: .trailing) {
                    Button {
                        showPassword = true
                    } label: {
                        Image(systemName: "eye.slash")
                            .padding(.bottom, 20)
                    }
                }
            }
        }
    }
}

#Preview {
    PasswordComponentView(showPassword: .constant(false), password: .constant("Baba"))
}
