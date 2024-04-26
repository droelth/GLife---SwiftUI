//
//  NotificationViewModel.swift
//  GLife
//
//  Created by Berkay Sutlu on 28.04.2024.
//

import SwiftUI

class NotificationViewModel: ObservableObject {
    @StateObject var textVM = TextsViewModel()
    
    func pushNotification() {
        let content = UNMutableNotificationContent()
        content.title = textVM.notificationsTitle
        content.subtitle = textVM.notificationsSubtitle
        content.sound = UNNotificationSound.default
        
        // show this notification ten seconds from now
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        // choose a random identifier
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        // add our notification request
        UNUserNotificationCenter.current().add(request)
    }
    
}
