//
//  LoginView.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Email")
                .font(.system(size: 15))
            
            TextField("Email", text: $viewModel.email)
                .keyboardType(.emailAddress)
                .textFieldStyle(AuthTextFieldStyle())            
            
            PasswordComponentView(showPassword: $viewModel.showPassword, password: $viewModel.password)
            
            Button {
                sessionManager.sessionState = .loggedIn
            } label: {
                Text("Login")
            }
            .buttonStyle(PrimaryButtonStyle())
            
            HStack {
                Spacer()
                Text("Don't have an account?")
                    .font(.system(size: 14))
                Button {
                    viewModel.presentRegisterView = true
                } label: {
                    Text("Register now")
                        .font(.system(size: 14, weight: .semibold))
                }
                Spacer()
            }
        }
        .padding(.horizontal)
        .fullScreenCover(isPresented: $viewModel.presentRegisterView) {
            RegisterView()
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(SessionManager())
}
