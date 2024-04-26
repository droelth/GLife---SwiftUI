//
//  SingleBasicInfoItem.swift
//  GLife
//
//  Created by Berkay Sutlu on 28.04.2024.
//

import SwiftUI

struct SingleCardItem: View {
    @State var title: String
    @State var text: String
    @State var imageName: String
    var body: some View {
        ZStack{
            Rectangle()
                
                .foregroundColor(.clear)
                .frame(height: 132)
                .background(Color(red: 0.56, green: 0.97, blue: 0.03))
                .cornerRadius(12)
            
            HStack{
                VStack{
                    // Subtitle
                    Text(title)
                        .font(
                            .custom("", size: 16)
                            
                        )
                        .foregroundColor(Color(red: 0.29, green: 0.27, blue: 0.27))
                        .frame(width: 165, height: 18, alignment: .leading)
                    
                    
                    // Paragraph
                   
                    Text(text)
                        .font(
                            .custom("", size: 12)
                        )
                    
                        .foregroundColor(Color(red: 0.29, green: 0.27, blue: 0.27))
                    
                }
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 142, height: 132)
                    .background(
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 142, height: 132)
                            .clipped()
                    )
            }.padding(.horizontal,7)
            
            
        }
    }
}

#Preview {
    SingleCardItem(title: "Deneme", text: "Deneme yazısı", imageName: "Rectangle2")
}

