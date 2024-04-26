
import SwiftUI
import UserNotifications

struct RootView: View {
    @State var onBoardingPage = 0
    
    var body: some View {
        VStack{
            
            OnBoardingView(onBoardingPage: $onBoardingPage)
                .onAppear(perform: {
                // 2
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("Permission approved!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            })
        }
    }
}

#Preview {
    RootView()
}





