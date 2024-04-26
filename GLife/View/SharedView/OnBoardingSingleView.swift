
import SwiftUI

struct OnBoardingSingleView: View {
    let imageName: String
    let title: String
    let text: String
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 394, height: 501)
                .background(
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 394, height: 501)
                        .clipped()
                )
                .cornerRadius(34)
            Spacer()
        }.edgesIgnoringSafeArea(.all)
        
        VStack{
            Text(title)
                .font(
                    Font.custom("", size: 28)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.56, green: 0.97, blue: 0.03))
                .padding(.vertical,30)
            
            // Subtext
            Text(text)
                .font(Font.custom("", size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.21, green: 0.19, blue: 0.19))
                .frame(width: 323, alignment: .center)
        }.padding(20).frame(height: 200)
    }
}

#Preview {
    OnBoardingSingleView(imageName: "Rectangle2", title: "Deneme", text: "sdnjfsjkdf")
}
