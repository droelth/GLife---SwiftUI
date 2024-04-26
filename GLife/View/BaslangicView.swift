//
//  BaslangicView.swift
//  GLife
//
//  Created by Berkay Sutlu on 26.04.2024.
//

import SwiftUI

struct BaslangicView: View {
    @StateObject var textVM = TextsViewModel()
    @Environment(\.dismiss) var dismiss
    @State var goToSurdo = false
    @State var goToGeriDonusum = false
    @State var goToIleriDonusum = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30){
                surdoCardView(goToSurdo: $goToSurdo, textVM: textVM).padding(.top)
                
                geriDonusumCardView(goToGeriDonusum: $goToGeriDonusum, textVM: textVM)
                
                ileriDonusumCardView(goToIleriDonusum: $goToIleriDonusum, textVM: textVM)
                Spacer()
                
            }.padding(.horizontal,20).navigationTitle("Başlangıç Bilgileri")
                .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "arrow.left")
                    }
                }
            }
        }
    }
}

#Preview {
    BaslangicView()
}



