//
//  Enums.swift
//  GLife
//
//  Created by Berkay Sutlu on 30.04.2024.
//

import Foundation


enum ErrorText: Hashable {
    case wrongPassword
    case passNotEqual
    case wrongPassFormat
    
    var message: String {
        switch self {
        case .wrongPassword:
            return "Yanlış email/şifre girdiniz."
        case .passNotEqual:
            return "Şifreleriniz uyuşmuyor."
        case .wrongPassFormat:
            return "Şifreniz 6-30 karakter arası olmalı."
        }
    
    }
}
