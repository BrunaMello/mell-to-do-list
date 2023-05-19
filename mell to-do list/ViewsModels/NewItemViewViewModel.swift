//
//  NewItemViewModel.swift
//  mell to-do list
//
//  Created by Bruna Mello on 14/05/2023.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false

    
    init() {}
    
    func save() {
        
    }
    
    // checking if the item can be save
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
