//
//  AddReceipeView.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import SwiftUI

struct AddReceipeView: View {
    @State private var receipeName = ""
    @State private var preparationTime = 0
    @State private var instructions = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("What's New")
                .font(.system(size: 26, weight: .bold))
                .padding(.top, 20)
            
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .fill(.primaryFormEntry)
                    .frame(height: 200)
                
                Image(systemName: "photo.fill")
            }
            
            Text("Receipe Name")
                .padding(.top)
                .font(.system(size: 15, weight: .semibold))

            
            TextField("", text: $receipeName)
                .textFieldStyle(CapsuleTextFieldStyle())
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
            
            Text("Preparation Time")
                .padding(.top)
                .font(.system(size: 15, weight: .semibold))
            
            Picker(selection: $preparationTime) {
                ForEach(0...120, id: \.self) { time in
                    
                    if time % 5 ==  0 {
                        Text("\(time) mins")
                            .font(.system(size: 15))
                            .tag(time)
                    }
                }

            } label: {
                Text("Prep time")
            }

            Text("Cooking Instructions")
                .padding(.top)
                .font(.system(size: 15, weight: .semibold))
            
            TextEditor(text: $instructions)
                .frame(height: 150)
                .background(.primaryFormEntry)
                .scrollContentBackground(.hidden)
                .clipShape(.rect(cornerRadius: 10))
                .shadow(radius: 1)
            
            Button {
                
            } label: {
                Text("Add Receipe")
            }
            .padding(.top)
            .buttonStyle(PrimaryButtonStyle())
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    AddReceipeView()
}
