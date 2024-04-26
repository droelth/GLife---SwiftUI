
import SwiftUI

struct CategoriesView: View {
    @State var goToBaslangic = false
    @State var goToDönüşüm = false
    @State var goToPratik = false
    @State var goToSosyal = false
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            VStack {
                Button(action: {
                    goToBaslangic.toggle()
                }, label: {
                    SingleCategoryView(imageName: "Tanımlar", textName: "Başlangıç").foregroundColor(.primary)
                })
                .fullScreenCover(isPresented: $goToBaslangic, content: {
                    BaslangicView()
                })
                
                Button(action: {
                    goToDönüşüm.toggle()
                }, label: {
                    SingleCategoryView(imageName: "Resim", textName: "Dönüşüm Rehberi").foregroundColor(.primary)
                })
                .fullScreenCover(isPresented: $goToDönüşüm, content: {
                    DonusumRehberiView()
                })
                
                Button(action: {
                    goToPratik.toggle()
                }, label: {
                    SingleCategoryView(imageName: "Tornavida", textName: "Pratik Bilgiler").foregroundColor(.primary)
                })
                .fullScreenCover(isPresented: $goToPratik, content: {
                    PratikView()
                })
                
                Button(action: {
                    goToSosyal.toggle()
                }, label: {
                    SingleCategoryView(imageName: "SosyalMedya", textName: "Sosyal Medya").foregroundColor(.primary)
                })
                .fullScreenCover(isPresented: $goToSosyal, content: {
                    SosyalMedyaView()
                })
                
             
                
            }.navigationTitle("Categories")
        }
    }
}

#Preview {
    CategoriesView()
}
