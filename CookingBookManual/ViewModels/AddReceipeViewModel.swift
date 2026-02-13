//
//  AddReceipeViewModel.swift
//  CookingBookManual
//
//  Created by Manyuchi, Carrington C on 2026/02/13.
//

import Foundation
import Combine

class AddReceipeViewModel: ObservableObject {
    @Published var receipeName = ""
    @Published var preparationTime = 0
    @Published var instructions = ""
}
