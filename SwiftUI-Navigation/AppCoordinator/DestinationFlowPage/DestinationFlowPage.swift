//
//  DestinationFlowPage.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import Foundation

enum DestinationFlowPage: Hashable, Identifiable {
    
    static func == (lhs: DestinationFlowPage, rhs: DestinationFlowPage) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    var id: String {
        String(describing: self)
    }

    case auth(AuthPage)
    case platform(PlatformTab)
    case connectionStatus(ConnectionStatusPage)
    case settings(SettingsPage)
    case detailsPage(DetailsPage)
    case addToCart(AddToCart)
    case payment(PaymentPage)
    case profile(profilePage)
    case about(AboutPage)
    
    func hash(into hasher: inout Hasher) {
        // Hashing logic based on the enum case
        switch self {
        case .auth(_):
            hasher.combine("auth")
        case .platform(_):
            hasher.combine("platform")
        case .connectionStatus(_):
            hasher.combine("connectionStatus")
        case .settings(_):
            hasher.combine("settings")
        case .detailsPage(_):
            hasher.combine("detailsPage")
        case .addToCart(_):
            hasher.combine("addToCart")
        case .payment(_):
            hasher.combine("payment")
        case .profile(_):
            hasher.combine("profile")
        case .about(_):
            hasher.combine("about")
        }
    }
}
