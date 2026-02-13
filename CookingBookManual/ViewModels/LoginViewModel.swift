//
//  LoginViewModel.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    @Published var presentRegisterView: Bool = false
    @Published var presentLoginView: Bool = false
    @Published var showPassword: Bool = false
    @Published var email = ""
    @Published var password = ""
}
