//
//  RegisterViewModel.swift
//  mell to-do list
//
//  Created by Bruna Mello on 14/05/2023.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        
        // creating a user
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        //creating new user for database
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        //insert new user in database
        let db = Firestore.firestore()
        
        // collection for users
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        
        //if has some white or empty spaces return false
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        //if email does not contais these caractheres return false
        guard email.contains("@") && email.contains(".") else {
            return false
        }
    
        //if the password is shorter than 6 return false
        guard password.count >= 6 else {
            return false
        }
        
        
        return true
    }
    
    
}
