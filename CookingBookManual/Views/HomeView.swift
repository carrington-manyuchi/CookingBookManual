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

    fileprivate func ReceipeRow(receipe: Receipe) -> some View {
        VStack(alignment: .leading) {
            Image(receipe.image)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 200)
                .clipShape(.rect(cornerRadius: 8))
                .clipped()
            
            Text(receipe.name)
                .lineLimit(1)
                .font(.system(size: 15, weight: .semibold))
                .foregroundStyle(.black)
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    ForEach(0...2, id: \.self) { index in
                        NavigationLink {
                            ReceipeDetailView(receipe: Receipe.mockReceipes[index])
                        } label: {
                            ReceipeRow(receipe: Receipe.mockReceipes[index])
                        }
                    }
                }
                Spacer()
                .padding(.horizontal)

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

