//
//  PratikView.swift
//  GLife
//
//  Created by Berkay Sutlu on 26.04.2024.
//

import SwiftUI

struct PratikView: View {
    @State var goToEv = false
    @State var goToKisisel = false
    @StateObject var textVM = TextsViewModel()
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationStack {
            VStack{
                evCardView(goToEv: $goToEv, textVM: textVM).padding(.vertical)
                kisiselCardView(goToKisisel: $goToKisisel, textVM: textVM).padding(.vertical)
                Spacer()
            }
            .padding()
            .navigationTitle("Pratik Bilgiler")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }) {
                                        Image(systemName: "arrow.left").foregroundColor(.primary)
                                    }
                                }
            }
        }
    }
}

#Preview {
    PratikView()
}
