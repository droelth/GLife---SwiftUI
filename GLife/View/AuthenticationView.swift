//
//  AuthenticationView.swift
//  GLife
//
//  Created by Berkay Sutlu on 29.04.2024.
//

import SwiftUI

struct AuthenticationView: View {
    @StateObject var authVM = AuthViewModel()
    @State var loginEmail = ""
    @State var signEmail = ""
    @State var loginPass = ""
    @State var signPass = ""
    @State var signSelected = false
    var body: some View {
        ZStack {
            Image("tree").resizable().edgesIgnoringSafeArea(.all).blur(radius: 5.0)
            
            ZStack{
                Rectangle().fill(.green).opacity(0.4)
                VStack {
                    HStack {
                        Text("Login")
                            .font(!signSelected ? .largeTitle : .subheadline)
                            .fontWeight(!signSelected ? .black : .medium)
                            .frame(width: !signSelected ?  UIScreen.main.bounds.width - 125 : 75)
                            .onTapGesture {
                                withAnimation(.bouncy) {
                                    signSelected.toggle()
                                    
                                }
                            }
                        Rectangle().frame(width: 2,height: 20)
                        Text("Sign Up")
                            .font(signSelected ? .largeTitle : .subheadline)
                            .fontWeight(signSelected ? .black : .medium)
                            .frame(width: signSelected ?  UIScreen.main.bounds.width - 125 : 75)
                            .onTapGesture {
                                withAnimation(.bouncy) {
                                    signSelected.toggle()
                                    
                                }
                            }
                           
                        
                        
                    }.foregroundColor(.white)
                    Rectangle().frame(width: UIScreen.main.bounds.width - 100, height: 5).foregroundColor(.white)
                    if signSelected {
                        SignView(email: $signEmail, pass: $signPass, signSelected: $signSelected, authVM: authVM)
                    } else {
                        LoginView(email: $loginEmail, pass: $loginPass, authVM: authVM)
                        
                    }
                }
            }.onChange(of: signSelected) { _, _ in
                loginPass = ""
                loginEmail = ""
                signPass = ""
                signEmail = ""
            }
            
            
        }
    }
}

#Preview {
    AuthenticationView()
}




