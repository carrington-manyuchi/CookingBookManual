//
//  ContentView.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Cooking Book App")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        viewModel.showSignOutAlert = true
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .foregroundStyle(.black)
                    }
                }
            }
            .alert("Are you sure you would like to logout", isPresented: $viewModel.showSignOutAlert) {
                Button("Sign Out", role: .destructive) {
                    sessionManager.sessionState = .loggedOut
                }
            }


        }
    }
}

#Preview {
    HomeView()
        .environmentObject(SessionManager())
}
