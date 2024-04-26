//
//  SingleCategoryView.swift
//  GLife
//
//  Created by Berkay Sutlu on 26.04.2024.
//

import SwiftUI

struct SingleCategoryView: View {
    @State var imageName: String
    @State var textName: String
    var body: some View {
        HStack{
            Image(imageName).resizable().scaledToFit().frame(width: 150)
            Text(textName).font(.title2).fontWeight(.bold)
            Spacer()
        }.padding(.horizontal,20)
    }
}

