//
//  CapsuleTextFieldStyle.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import Foundation
import SwiftUI

struct CapsuleTextFieldStyle: TextFieldStyle {
    func  _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(
               Capsule()
                    .fill(.primaryFormEntry)
            )
    }
    
    
}


