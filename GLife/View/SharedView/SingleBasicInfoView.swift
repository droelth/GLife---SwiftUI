//
//  SingleBasicInfoView.swift
//  GLife
//
//  Created by Berkay Sutlu on 28.04.2024.
//

import SwiftUI

// En uç nokta

struct SingleBasicInfoView: View {
    @State var imageName: String
    @State var title: String
    @State var text: LocalizedStringKey
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack{
                    Image(imageName).resizable().scaledToFit().cornerRadius(20)
                    
                    Text(title).bold().font(.title).padding(.vertical)
                    
                    Text(text).multilineTextAlignment(.leading)
                }.padding(.horizontal,10).toolbar{
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
}


