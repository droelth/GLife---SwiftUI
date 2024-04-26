//
//  SosyalMedyaView.swift
//  GLife
//
//  Created by Berkay Sutlu on 26.04.2024.
//

import SwiftUI
import WebKit

struct SosyalMedyaView: View {
    @Environment(\.presentationMode) var presentationMode

    let isilYoutubeURL = "https://www.youtube.com/@isilergincan/featured"
    let cevkoYoutubeURL = "https://www.youtube.com/@CEVKOVAKFI/videos"
    let reppatchYoutubeURL = "https://www.youtube.com/@Reppatch"
    let copculerYoutubeURL = "https://www.youtube.com/@Copculer/videos"
    let utkuYoutubeURL = "https://www.youtube.com/@benutkuyilmaz/featured"
    let donusumYoutubeURL = "https://www.youtube.com/@DONUSUMDUNYAM/featured"
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20){
                    Button(action: {
                        openYouTube(url: isilYoutubeURL)
                    }) {
                        Image("isil1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400,height: 180)
                            .cornerRadius(20)
                    }
                    Button(action: {
                        openYouTube(url: cevkoYoutubeURL)
                    }) {
                        Image("cevko1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400,height: 180)
                            .cornerRadius(20)
                    }
                    Button(action: {
                        openYouTube(url: reppatchYoutubeURL)
                    }) {
                        Image("reppatch1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400,height: 180)
                            .cornerRadius(20)
                    }
                    Button(action: {
                        openYouTube(url: copculerYoutubeURL)
                    }) {
                        Image("çöpçü1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400,height: 180)
                            .cornerRadius(20)
                    }
                    Button(action: {
                        openYouTube(url: utkuYoutubeURL)
                    }) {
                        Image("utku1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400,height: 180)
                            .cornerRadius(20)
                    }
                    Button(action: {
                        openYouTube(url: donusumYoutubeURL)
                    }) {
                        Image("donusum1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400,height: 180)
                            .cornerRadius(20)
                    }
                    
                    
                }.navigationTitle("Sosyal Medya").toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "arrow.left")
                                        }
                                    }
            }
            }
        }.padding(10)
    }
//youtube götür
    func openYouTube(url: String) {
        guard let url = URL(string: url) else {
            return // Handle invalid URL
        }
        
        UIApplication.shared.open(url)
    }
}


#Preview {
    SosyalMedyaView()
}

/// TabViews





