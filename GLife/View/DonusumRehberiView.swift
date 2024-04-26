//
//  DonusumRehberiView.swift
//  GLife
//
//  Created by Berkay Sutlu on 26.04.2024.
//

import SwiftUI


struct DonusumRehberiView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject var textVM = TextsViewModel()

    @State var goToPlastik = false
    @State var goToSuAyak = false
    @State var goToMetal = false
    @State var goToCam = false
    @State var goToKagıt = false
    @State var goToPil = false
    @State var goToElektro = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing:20){
                    plastikCardView(goToPlastik: $goToPlastik, textVM: textVM)
                    
                    suAyakCardView(goToSuAyak: $goToSuAyak, textVM: textVM)
                    
                    
                    metalCardView(goToMetal: $goToMetal, textVM: textVM)
                    
                
                    camCardView(goToCam: $goToCam, textVM: textVM)
                    
                    
                    kagitCardView(goToKagıt: $goToKagıt, textVM: textVM)
                    
                    
                    pilCardView(goToPil: $goToPil, textVM: textVM)
                    
                    
                    eatıkCardView(goToElektro: $goToElektro, textVM: textVM)
                }.padding().navigationTitle("Dönüşüm Rehberi")
            }.toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }) {
                                        Image(systemName: "arrow.left")
                                    }
                                }
            }
        }
    }
}

#Preview {
    DonusumRehberiView()
}


