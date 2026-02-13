//
//  CookingBookManualApp.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

@main
struct CookingBookManualApp: App {
    @StateObject var sessionManager = SessionManager()
    
    var body: some Scene {
        WindowGroup {
            
            switch sessionManager.sessionState {
            case .loggedIn:
                HomeView()
                    .environmentObject(sessionManager)
            case .loggedOut:
                LoginView()
                    .environmentObject(sessionManager)
            }
           
        }
    }
}
