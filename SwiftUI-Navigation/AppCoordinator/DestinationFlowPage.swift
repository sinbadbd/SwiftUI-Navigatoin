//
//  DestinationFlowPage.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import Foundation

/// Define enum to identify individualy navigation trigger point
enum DestinationFlowPage: Hashable, Identifiable {
    static func == (lhs: DestinationFlowPage, rhs: DestinationFlowPage) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    case auth
    case home
    case connectionStatus
    case settings
    case detailsPage(String)
    case addToCart
    case payment
    case settingsTnC
    case settingsPnP
    case profile
    case profileDetail(user: Any)
    case homeDetail
    case generalDetail(text: String)
    
    var id: String {
        String(describing: self)
    }
    
    func hash(into hasher: inout Hasher) {
        // Hashing logic based on the enum case
        switch self {
        case .home:
            hasher.combine("home")
        case .auth:
            hasher.combine("login")
        case .connectionStatus:
            hasher.combine("connectionStatus")
        case .settings:
            hasher.combine("settings")
        case .detailsPage(_):
            hasher.combine("detailsPage")
        case .addToCart:
            hasher.combine("addToCart")
        case .payment:
            hasher.combine("payment")
        case .profile:
            hasher.combine("profile")            
        case .settingsTnC:
            hasher.combine("settingsTnC")
        case .settingsPnP:
            hasher.combine("settingsPnP")
        case .profileDetail(_):
            hasher.combine("profileDetail")
        case .homeDetail:
            hasher.combine("homeDetail")
        case .generalDetail(_):
            hasher.combine("generalDetail")
        }
    }
    
}

protocol AnyDataModel {
    var data: Any? { get set }
    var index: Int? { get set }
    var id: String? { get set }
}
