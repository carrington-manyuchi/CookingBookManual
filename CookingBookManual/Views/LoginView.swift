//
//  LoginView.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Email")
                .font(.system(size: 15))
            
            TextField("Email", text: $viewModel.email)
                .keyboardType(.emailAddress)
                .textFieldStyle(AuthTextFieldStyle())
            
            Text("Password")
                .font(.system(size: 15))
            
            if viewModel.showPassword {
                TextField("Password", text: $viewModel.password)
                    .textFieldStyle(AuthTextFieldStyle())
                    .overlay(alignment: .trailing) {
                        Button {
                            viewModel.showPassword = false
                        } label: {
                            Image(systemName: "eye")
                                .padding(.bottom)
                        }
                    }
            } else {
                SecureField("Password", text: $viewModel.password)
                    .font(.system(size: 14))
                    .overlay(alignment: .trailing) {
                        Button {
                            viewModel.showPassword = true
                        } label: {
                            Image(systemName: "eye.slash")
                        }
                    }
                
                Rectangle()
                    .fill(.border)
                    .frame(height: 1)
                    .padding(.bottom, 15)
            }
            
            Button {
                //MARK: - TODO - Login Button
                
            } label: {
                Text("Login")
                    .padding(12)
                    .foregroundStyle(.white)
                    .font(.system(size: 15, weight: .semibold))
                    .frame(maxWidth: .infinity)
                    .background(.green)
                    .clipShape(.rect(cornerRadius: 8))
            }
            

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
}
