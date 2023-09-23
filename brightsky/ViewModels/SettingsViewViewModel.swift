//
//  SettingsViewViewModel.swift
//  brightsky
//
//  Created by Waleed Swaileh on 9/24/23.
//

import Foundation


struct SettingsViewViewModel {
    let option: [SettingOption]
}

enum SettingOption: CaseIterable {
    case upgrade
    case privacyPolicy
    case terms
    case contact
    case getHelp
    case rateApp
    
    var title: String {
        switch self {
        case .upgrade:
            return "Upgrade To Pro"
        case .privacyPolicy:
            return "Privacy Policy"
        case .terms:
            return "Terms Of Use"
        case .contact:
            return "Contact Us"
        case .getHelp:
            return "Get Help"
        case .rateApp:
            return "Rate App"
        }
    }
}
