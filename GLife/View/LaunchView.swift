import SwiftUI

struct LaunchView: View {
    @State var goToNext = false
    @AppStorage("isUserSignedIn") private var isUserSignedIn = false

    var body: some View {
        ZStack {
            Color(red: 0.56, green: 0.97, blue: 0.03).edgesIgnoringSafeArea(.all)
            VStack {
                Image("Vector")
                  .frame(width: 175, height: 147.48428)
                  .overlay(
                    Rectangle()
                      .stroke(.white, lineWidth: 6.60377)
                  )
                
                Text("G - Life")
                  .font(
                    Font.custom("", size: 58.85469)
                      .weight(.semibold)
                  )
                  .foregroundColor(.white)
                
                Text("Sustainability")
                    .font(.title)
                  .fontWeight(.bold)
                 .kerning(10.36)
                  .foregroundColor(.white)
                
                
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    goToNext.toggle()
                }
            }.fullScreenCover(isPresented: $goToNext, content: {
                // 1
                if isUserSignedIn == true {
                    MainRootView()
                } else {
                    RootView()
                }
            })
        }
    }
}

#Preview {
    LaunchView()
}
