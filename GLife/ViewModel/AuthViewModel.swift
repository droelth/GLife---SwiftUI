//
//  AuthViewModel.swift
//  GLife
//
//  Created by Berkay Sutlu on 29.04.2024.
//

import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject {
    
    let auth = Auth.auth()
    
    // Signup function
    func signUp(email: String, password: String, completion: @escaping (AuthDataResult?, Error?) -> Void) {
        auth.createUser(withEmail: email, password: password, completion: completion)
    }
    
    // Login function
    func login(email: String, password: String, completion: @escaping (AuthDataResult?, Error?) -> Void) {
        auth.signIn(withEmail: email, password: password, completion: completion)
    }
    
    // Logout function
    func logout() {
        do {
            try auth.signOut()
        } catch {
            print("Error signing out: \(error.localizedDescription)")
        }
    }
    
    
    
}
