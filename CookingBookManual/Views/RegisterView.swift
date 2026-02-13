//
//  ResgisterView.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(alignment: .leading) {
            Text("Username")
                .font(.system(size: 15))
            
            TextField("Username", text: $viewModel.username)
                .keyboardType(.emailAddress)
                .textFieldStyle(AuthTextFieldStyle())
            
            Text("Email")
                .font(.system(size: 15))
            
            TextField("Email", text: $viewModel.email)
                .keyboardType(.emailAddress)
                .textFieldStyle(AuthTextFieldStyle())
            
            
            PasswordComponentView(showPassword: $viewModel.showPassword, password: $viewModel.password)
            
            Button {
                //MARK: - TODO - Login Button
                
            } label: {
                Text("Sign up")
                    .padding(12)
                    .foregroundStyle(.white)
                    .font(.system(size: 15, weight: .semibold))
                    .frame(maxWidth: .infinity)
                    .background(.green)
                    .clipShape(.rect(cornerRadius: 8))
            }
            
            HStack {
                Spacer()
                Text("Already have an account?")
                    .font(.system(size: 14))
                Button {
                    dismiss()
                } label: {
                    Text("Login now")
                        .font(.system(size: 14, weight: .semibold))
                }
                Spacer()
            }
        }
        .padding(.horizontal)
        .fullScreenCover(isPresented: $viewModel.presentLoginView) {
            LoginView()
        }
    }
}


#Preview {
    RegisterView()
}
