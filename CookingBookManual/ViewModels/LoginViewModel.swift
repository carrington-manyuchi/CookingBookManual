//
//  LoginViewModel.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

@Observable
class LoginViewModel {
    var presentRegisterView: Bool = false
    var presentLoginView: Bool = false
    var showPassword: Bool = false
    var email = ""
    var password = ""
}
