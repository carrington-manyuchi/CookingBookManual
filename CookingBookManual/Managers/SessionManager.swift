//
//  SessionManager.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI
import Combine

class SessionManager: ObservableObject {
    
    @Published var sessionState: SessionState = .loggedOut
    
    
}
