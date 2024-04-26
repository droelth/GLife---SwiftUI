import SwiftUI

struct MainView: View {
    @StateObject var textVM = TextsViewModel()
    @StateObject var authVM = AuthViewModel()
    @StateObject var notificationVM = NotificationViewModel()
    @AppStorage("isUserSignedIn") private var isUserSignedIn = false

    @State var goToBaslangic = false
    @State var goToDönüşüm = false
    @State var goToPratik = false
    @State var goToSosyal = false
    @State var goToSurdo = false
    @State var goToGeriDonusum = false
    @State var goToIleriDonusum = false
    @State var goToPlastik = false
    @State var goToElektro = false
    @State var goToAuth = false
    
    var body: some View {
        ScrollView {
            VStack{
                /// HEADER
                HStack{
                    VStack {
                        // Title
                        Text("Merhaba, hoşgeldiniz")
                            .font(
                                Font.custom("", size: 20)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.96, green: 0.71, blue: 0.64))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        // Subtext
                        Text("Geleceğe yeşil bir adım")
                            .font(Font.custom("", size: 14))
                            .foregroundColor(Color(red: 0.21, green: 0.19, blue: 0.19))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    ///change thıs to actıvate notification
                    
                    Button {
                        notificationVM.pushNotification()
                    } label: {
                        Image(systemName: "bell")
                    }
                    
                    Button {
                        authVM.logout()
                        isUserSignedIn = false
                        goToAuth.toggle()
                    } label: {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                    }.fullScreenCover(isPresented: $goToAuth, content: {
                        AuthenticationView()
                    })
                }.padding(.vertical)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(maxWidth: .infinity, minHeight: 132, maxHeight: 132)
                    .background(
                        Image("Rectangle142")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 132)
                            .clipped()
                    )
                
                Text("Kategoriler")
                    .font(
                        Font.custom("", size: 15)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.8, green: 0.47, blue: 0.38))
                    .padding(.top)
                
                
                HStack(alignment: .center, spacing: 14) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 65, height: 65)
                        .background(
                            Image("Tanımlar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 65, height: 65)
                                .clipped()
                        )
                        .onTapGesture {
                            goToBaslangic.toggle()
                        }.fullScreenCover(isPresented: $goToBaslangic, content: {
                            BaslangicView()
                        })
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 65, height: 65)
                        .background(
                            Image("Resim")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 65, height: 65)
                                .clipped()
                        ).onTapGesture {
                            goToDönüşüm.toggle()
                        }.fullScreenCover(isPresented: $goToDönüşüm, content: {
                            DonusumRehberiView()
                        })
                        
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 65, height: 65)
                        .background(
                            Image("Tornavida")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 65, height: 65)
                                .clipped()
                        ).onTapGesture {
                            goToPratik.toggle()
                        }.fullScreenCover(isPresented: $goToPratik, content: {
                            PratikView()
                        })
                        
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 65, height: 65)
                        .background(
                            Image("SosyalMedya")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 65, height: 65)
                                .clipped()
                        )
                        .onTapGesture {
                            goToSosyal.toggle()
                        }.fullScreenCover(isPresented: $goToSosyal, content: {
                            SosyalMedyaView()
                        })
                    
                }
                
                .frame(width: 349, alignment: .center)
                
                
                HStack{
                    Text("Başlangıç")
                        .font(
                            Font.custom("", size: 15)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.8, green: 0.47, blue: 0.38))
                    Spacer()
                }
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 50) {
                        surdoCardView(goToSurdo: $goToSurdo, textVM: textVM).frame(maxWidth: UIScreen.main.bounds.width - 100)
                        
                        geriDonusumCardView(goToGeriDonusum: $goToGeriDonusum, textVM: textVM).frame(maxWidth: UIScreen.main.bounds.width - 100)
                        
                        ileriDonusumCardView(goToIleriDonusum: $goToIleriDonusum, textVM: textVM).frame(maxWidth: UIScreen.main.bounds.width - 100)
                        
                        
                    }.padding()
                }
                
                
                HStack{
                    Text("Dönüşüm Rehberi")
                        .font(
                            Font.custom("", size: 15)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.8, green: 0.47, blue: 0.38))
                    
                    Spacer()
                }.padding(.bottom)
                
                HStack{
                    Button(action: {
                        goToPlastik.toggle()
                    }, label: {
                        VStack(alignment: .center, spacing: 9){
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 163, height: 142)
                                .background(
                                    Image("Rectangle1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 163, height: 142)
                                        .clipped()
                                )
                                .background(Color(red: 0.86, green: 0.75, blue: 0.71))
                            
                            // Subtitle
                            Text("Plastik")
                                .font(
                                    Font.custom("", size: 15)
                                        .weight(.medium)
                                )
                                .foregroundColor(Color(red: 0.29, green: 0.27, blue: 0.27))
                                .frame(width: 151, height: 17, alignment: .leading)
                            
                            Text("Plastik; karbon, oksijen, hidrojen gibi elementlerden meydana...")
                                .font(
                                    Font.custom("", size: 11)
                                        .weight(.light)
                                )
                                .foregroundColor(Color(red: 0.29, green: 0.27, blue: 0.27))
                                .frame(width: UIScreen.main.bounds.width / 2 - 10, height: 17, alignment: .leading)
                            Spacer()
                        }
                    }).fullScreenCover(isPresented: $goToPlastik, content: {
                        SingleBasicInfoView(imageName: "plastikPic", title: "Plastik", text: textVM.plasticText)
                    })
                    
                    Button(action: {
                        goToElektro.toggle()
                    }, label: {
                        VStack(alignment: .center, spacing: 9) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 163, height: 142)
                                .background(
                                    Image("Rectangle2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 163, height: 142)
                                        .clipped()
                                )
                                .background(Color(red: 0.86, green: 0.75, blue: 0.71))
                            
                            // Subtitle
                            Text("Elektronik Atık")
                                .font(
                                    Font.custom("", size: 15)
                                        .weight(.medium)
                                )
                                .foregroundColor(Color(red: 0.29, green: 0.27, blue: 0.27))
                                .frame(width: 151, height: 17, alignment: .leading)
                            
                            Text("e-atık, kullanılmayan veya bozuk olan elektronik cihazların ve ekip...")
                                .font(
                                    Font.custom("", size: 11)
                                        .weight(.light)
                                )
                                .foregroundColor(Color(red: 0.29, green: 0.27, blue: 0.27))
                                .frame(width: UIScreen.main.bounds.width / 2 - 10, height: 17, alignment: .leading)
                            Spacer()
                        }
                    }).fullScreenCover(isPresented: $goToElektro, content: {
                        SingleBasicInfoView(imageName: "elektroPic", title: "E-atık & Bitkisel Atıklar", text: textVM.elektroText)
                    })
                }
                
            }.padding()
        }
    }
}




#Preview {
    MainRootView()
}
