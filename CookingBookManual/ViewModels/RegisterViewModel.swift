//
//  RegisterView.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI
import Combine

class RegisterViewModel: ObservableObject {
    @Published var presentLoginView: Bool = false
    @Published var showPassword: Bool = false
    @Published var username: String = ""
    @Published var email = ""
    @Published var password = ""
    
}
