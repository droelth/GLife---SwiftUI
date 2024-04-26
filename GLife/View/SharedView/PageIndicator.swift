//
//  PageIndicator.swift
//  GLife
//
//  Created by Berkay Sutlu on 27.04.2024.
//

import SwiftUI

struct PageIndicator: View {
    let isActive: Bool
    
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: isActive ? 36 : 12, height: 7)
            .background(
                isActive ? Color(red: 0.56, green: 0.97, blue: 0.03) : Color(red: 0.82, green: 0.96, blue: 0.64)
            )
            .cornerRadius(22)
    }
}
