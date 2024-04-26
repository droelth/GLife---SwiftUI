//
//  SignView.swift
//  GLife
//
//  Created by Berkay Sutlu on 3.05.2024.
//

import SwiftUI

struct SignView: View {
    @Binding var email: String
    @Binding var pass : String
    @State var passCorrection = ""
    @State var errorText = ""
    @State var errorShown = false
    @Binding var signSelected: Bool
    @ObservedObject var authVM: AuthViewModel
    var body: some View {
        VStack{
            TextField("Email", text: $email).padding().background(Color.green.opacity(0.9)).cornerRadius(12).padding().autocorrectionDisabled().textInputAutocapitalization(.never)
            TextField("Password", text: $pass).padding().background(Color.green.opacity(0.9)).cornerRadius(12).padding() .autocorrectionDisabled().textInputAutocapitalization(.never)
            TextField("Password Again", text: $passCorrection).padding().background(Color.green.opacity(0.9)).cornerRadius(12).padding() .autocorrectionDisabled().textInputAutocapitalization(.never)
            
            Text(errorShown ? errorText : "").foregroundStyle(.white).font(.footnote)
            
            Button(action: {
                if pass == passCorrection {
                    if pass.count > 5 && pass.count < 30 {
                        authVM.signUp(email: email, password: pass, completion: {_,error in
                            if let error = error {
                                print("Error signing up: \(error.localizedDescription)")
                            } else {
                                print("Sign up successful!")
                                signSelected.toggle()
                                
                            }
                        })
                    }
                    else {
                        errorShown = true
                        errorText = ErrorText.wrongPassFormat.message
                    }
                } else {
                    errorShown = true
                    errorText = ErrorText.passNotEqual.message
                }
                
            }, label: {
                Text("Sign").foregroundStyle(.white).padding().background(Color.green.opacity(0.9)).cornerRadius(12)
            })
        }
    }
}


//#Preview {
//    SignView()
//}
