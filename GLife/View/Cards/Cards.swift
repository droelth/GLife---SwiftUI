//
//  Cards.swift
//  GLife
//
//  Created by Berkay Sutlu on 28.04.2024.
//

import SwiftUI

struct plastikCardView: View {
    @Binding var goToPlastik: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Plastik", text: "Plastik; karbon, oksijen, hidrojen gibi elementlerden meydana gelen küçük molekül birimlerinin birbirine bağlanmasıyla oluşan malzemelerdir.", imageName: "Plastik").onTapGesture {
                goToPlastik.toggle()
            }.fullScreenCover(isPresented: $goToPlastik, content: {
                SingleBasicInfoView(imageName: "plastikPic", title: "Plastik", text: textVM.plasticText)
            })
        }
    }
}

struct suAyakCardView: View {
    @Binding var goToSuAyak: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Su Ayak İzi", text: "Su ayak izi, bir bireyin, toplumun veya işletmenin dolaylı ve doğrudan su tüketimini ölçen bir göstergedir.", imageName: "suayak").onTapGesture {
                goToSuAyak.toggle()
            }.fullScreenCover(isPresented: $goToSuAyak, content: {
                SingleBasicInfoView(imageName: "suayakiziPic", title: "Su Ayak İzi", text: textVM.suAyakIzıText)
            })
        }
    }
}

struct metalCardView: View {
    @Binding var goToMetal: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Metal", text: "Metal, yüksek elektrik ve ısı iletkenliği olan, genellikle parlak ve dayanıklı bir madde grubudur. Demir, alüminyum, bakır ve çinko gibi farklı türleri bulunur ve birçok endüstride yaygın olarak kullanılır.", imageName: "metal").onTapGesture {
                goToMetal.toggle()
            }.fullScreenCover(isPresented: $goToMetal, content: {
                SingleBasicInfoView(imageName: "metalPic", title: "Metal", text: textVM.metalText)
            })
        }
    }
}

struct camCardView: View {
    @Binding var goToCam: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Cam", text: "Cam, geri dönüştürülebilir malzemeler arasında en faydalı ve verimli olanlardan biridir.", imageName: "cam").onTapGesture {
                goToCam.toggle()
            }.fullScreenCover(isPresented: $goToCam, content: {
                SingleBasicInfoView(imageName: "camPic", title: "Cam", text: textVM.camText)
            })
        }
    }
}

struct kagitCardView: View {
    @Binding var goToKagıt: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Kağıt", text: "Kağıt, geri dönüştürülebilir malzemeler arasında önemli bir yere sahiptir. ", imageName: "kağıt").onTapGesture {
                goToKagıt.toggle()
            }.fullScreenCover(isPresented: $goToKagıt, content: {
                SingleBasicInfoView(imageName: "kagitPic", title: "Kağıt", text: textVM.kagitText)
            })
        }
    }
}

struct pilCardView: View {
    @Binding var goToPil: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Pil", text: "Piller, elektrik enerjisini kimyasal enerji yoluyla depolayan ve ihtiyaç duyulduğunda bu enerjiyi geri veren cihazlardır. Günlük hayatımızda, elektronik cihazlardan taşıtlara kadar pek çok alanda pil kullanıyoruz.", imageName: "pil").onTapGesture {
                goToPil.toggle()
            }.fullScreenCover(isPresented: $goToPil, content: {
                SingleBasicInfoView(imageName: "pilPic", title: "Pil", text: textVM.pilText)
            })
        }
    }
}

struct eatıkCardView: View {
    @Binding var goToElektro: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "E-atık & Bitkisel atıklar", text: "Elektronik atıklar, eski cihazlar, bitkisel atıklar ise organik kökenli artıkları ifade eder.", imageName: "eatık").onTapGesture {
                goToElektro.toggle()
            }.fullScreenCover(isPresented: $goToElektro, content: {
                SingleBasicInfoView(imageName: "elektroPic", title: "E-atık & Bitkisel Atıklar", text: textVM.elektroText)
            })
        }
    }
}

struct surdoCardView: View {
    @Binding var goToSurdo: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Sürdürülebilirlik", text: "Diğer canlıların yaşamlarını günümüzde ve gelecekte tehlikeye atmadan üretim yapmaktır.", imageName: "sürdoluk")
                .onTapGesture {
                    goToSurdo.toggle()
                }.fullScreenCover(isPresented: $goToSurdo, content: {
                    SingleBasicInfoView(imageName: "surdoPic", title: "Sürdürülebilirlik", text: textVM.surdurulebilirlikText)
                })
        }
    }
}

struct geriDonusumCardView: View {
    @Binding var goToGeriDonusum: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Geri Dönüşüm", text: "Geri dönüşüm, kullanılmış ya da atık hale gelmiş materyallerin toplanarak yeniden işlenmesi ve yeni ürünlerin üretiminde kullanılması sürecidir.", imageName: "gerid")
                .onTapGesture {
                    goToGeriDonusum.toggle()
                }.fullScreenCover(isPresented: $goToGeriDonusum, content: {
                    SingleBasicInfoView(imageName: "geriDonusumPic", title: "Geri DÖnüşüm", text: textVM.geriDonusumText )
                })
        }
    }
}

struct ileriDonusumCardView: View {
    @Binding var goToIleriDonusum: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "İleri Dönüşüm", text: "İleri dönüşüm (upcycling), eski ya da atık haldeki eşyaların yaratıcı bir şekilde yeniden kullanılarak yeni bir işlev kazandırılması sürecidir.", imageName: "ilerid")
                .onTapGesture {
                    goToIleriDonusum.toggle()
                }.fullScreenCover(isPresented: $goToIleriDonusum, content: {
                    SingleBasicInfoView(imageName: "ileriDonusumPic", title: "İleri Dönüşüm", text: textVM.ileriDonusumText)
                })
        }
    }
}


struct evCardView: View {
    @Binding var goToEv: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Ev", text: "Ev içerisinde yapmamız gereken şeyler", imageName: "ev").onTapGesture {
                goToEv.toggle()
            }.fullScreenCover(isPresented: $goToEv, content: {
                SingleBasicInfoView(imageName: "evPic", title: "Ev", text: textVM.metalText)
            })
        }
    }
}


struct kisiselCardView: View {
    @Binding var goToKisisel: Bool
    @ObservedObject var textVM: TextsViewModel
    var body: some View {
        VStack{
            SingleCardItem(title: "Kişisel Bakım", text: "Kişisel bakımımızı yaparken yapmamız gerekenler", imageName: "kişiselb").onTapGesture {
                goToKisisel.toggle()
            }.fullScreenCover(isPresented: $goToKisisel, content: {
                SingleBasicInfoView(imageName: "kisiselPic", title: "Kişisel Bakım", text: textVM.kisiselText)
            })
        }
    }
}
