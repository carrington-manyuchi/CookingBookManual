//
//  CookingBookManualApp.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

@main
struct CookingBookManualApp: App {
    @State var sessionManager = SessionManager()
    
    var body: some Scene {
        WindowGroup {
            
            switch sessionManager.sessionState {
            case .loggedIn:
                HomeView()
                    .environment(sessionManager)
            case .loggedOut:
                LoginView()
                    .environment(sessionManager)
            }
           
        }
    }
}
