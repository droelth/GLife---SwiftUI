//
//  LoginView.swift
//  GLife
//
//  Created by Berkay Sutlu on 3.05.2024.
//

import SwiftUI

struct LoginView: View {
    @Binding var email: String
    @Binding var pass : String
    @ObservedObject var authVM: AuthViewModel
    @State var errorText = ""
    @State var errorShown = false
    @State var logInSuccess = false
    @AppStorage("isUserSignedIn") private var isUserSignedIn = false


    var body: some View {
        VStack{
            TextField("Email", text: $email)
                .padding()
                .background(Color.green.opacity(0.9))
                .cornerRadius(12)
                .padding()
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
            TextField("Password", text: $pass).padding().background(Color.green.opacity(0.9)).cornerRadius(12).padding() .autocorrectionDisabled().textInputAutocapitalization(.never)
            
            Text(errorShown ? errorText : "")
                .foregroundStyle(.white).font(.footnote)
            /*
            if errorShown == true {
                errorText
            } else {
                ""
            }
            */
            
            Button(action: {
                
                authVM.login(email: email, password: pass) { _, error in
                    if let error = error {
                        print("Error signing up: \(error.localizedDescription)")
                        errorShown = true
                        errorText = ErrorText.wrongPassword.message
                    } else {
                        isUserSignedIn = true
                        logInSuccess.toggle()
                        print("Login successful!")
                    }
                    
                }
                
                
                
            }, label: {
                Text("Login").foregroundStyle(.white).padding().background(Color.green.opacity(0.9)).cornerRadius(12)
            }).fullScreenCover(isPresented: $logInSuccess, content: {
                MainRootView()
            })
        }
    }
}

//#Preview {
//    LoginView()
//}
