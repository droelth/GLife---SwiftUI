//
//  MainRootView.swift
//  GLife
//
//  Created by Berkay Sutlu on 26.04.2024.
//

import SwiftUI

struct MainRootView: View {
    @State var tabSelection = 0
    var body: some View {
        TabView(selection: $tabSelection,
                content:  {
            MainView()
                .tabItem {
                    Image("Home")
                }
            CategoriesView()
                .tabItem {
                    Image("Categories")
                }
            CartView()
                .tabItem {
                    Image("Cart")
                }
            WishlistView()
                .tabItem {
                    Image("Wishlist")
                }
            ProfileView()
                .tabItem {
                    Image("Profile")
                }
        })
    }
}

#Preview {
    MainRootView()
}
