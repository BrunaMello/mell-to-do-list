//
//  LoginViewModel.swift
//  mell to-do list
//
//  Created by Bruna Mello on 14/05/2023.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    //constructor
    init () {
        
    }
    
    func login() {}
    
    func validate() {
    }
}
