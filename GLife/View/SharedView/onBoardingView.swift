//
//  onBoardingView.swift
//  GLife
//
//  Created by Berkay Sutlu on 28.04.2024.
//

import SwiftUI

struct OnBoardingView: View {
    @State var goToNext = false
    @Binding var onBoardingPage: Int
    var body: some View {
        ZStack {
            Color(red: 0.82, green: 0.96, blue: 0.64)
                .frame(width: 400, height: 218)
                .cornerRadius(34)
                
            VStack{
                if onBoardingPage == 0 {
                    OnBoardingSingleView(imageName: "onBoarding1Image", title: "Sürdürülebilir Yaşam", text: "Doğayı koruyarak ve çevreye duyarlı yaşayarak sürdürülebilir bir gelecek için çaba gösteriyoruz.")
                } else if onBoardingPage == 1 {
                    OnBoardingSingleView(imageName: "onBoarding2Image", title: "Geri Dönüşüm", text: "Atıkları yeniden kullanarak kaynakları koruyoruz.")
                } else if onBoardingPage == 2 {
                    OnBoardingSingleView(imageName: "onBoarding3Image", title: "İleri Dönüşüm", text: "Teknolojiyle atıkları daha değerli malzemelere dönüştürüyoruz.")
                } else if onBoardingPage == 3 {
                    OnBoardingSingleView(imageName: "onBoarding4Image", title: "Temiz Dünya", text: "Çevre kirliliğiyle mücadele ederek temiz bir çevre için çalışıyoruz.")
                }
                
                Spacer()
                
                HStack {
                    if onBoardingPage != 0 {
                        
                        Button(action: {
                            if onBoardingPage != 0 {
                                onBoardingPage -= 1
                            } else {
                                //
                            }
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 133, height: 41)
                                    .background(Color(red: 0.56, green: 0.97, blue: 0.03))
                                    .cornerRadius(23)
                                Text("Geri")
                                    .font(
                                        Font.custom("", size: 20)
                                            .weight(.semibold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .frame(width: 117, height: 25, alignment: .center)
                            }
                        })
                    }
                    ForEach(0..<4) { index in
                        PageIndicator(isActive: index == onBoardingPage)
                    }
                    Spacer()
                    Button(action: {
                        if onBoardingPage != 3 {
                            onBoardingPage += 1
                        } else {
                            goToNext.toggle()
                        }
                    }, label: {
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 133, height: 41)
                                .background(Color(red: 0.56, green: 0.97, blue: 0.03))
                                .cornerRadius(23)
                            Text("İleri")
                                .font(
                                    Font.custom("", size: 20)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .frame(width: 117, height: 25, alignment: .center)
                        }
                    })
                }.padding(35)
            }.fullScreenCover(isPresented: $goToNext, content: {
                AuthenticationView()
            }).padding(20)
        }
    }
}

