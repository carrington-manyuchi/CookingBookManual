//
//  RegisterView.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

@Observable
class RegisterViewModel {
    var presentLoginView: Bool = false
    var showPassword: Bool = false
    var username: String = ""
    var email = ""
    var password = ""
    
}
