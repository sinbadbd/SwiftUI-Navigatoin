//
//  DeepLinkRoute.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 18/4/24.
//

import Foundation

enum DeepLinkRoute {
    case auth
    case home
    case details(String)
    case profile
    
    // Factory method to create routes from URL components
    static func from(url: URL) -> DeepLinkRoute? {
        guard let components = URLComponents(url: url, resolvingAgainstBaseURL: true),
              let host = components.host else {
            return nil
        }
        
        switch host {
        case "auth":
            return .auth
        case "home":
            return .home
        case "details":
            // Extract the 'id' query parameter to pass to the details route
            let itemID = components.queryItems?.first(where: { $0.name == "id" })?.value
            if let itemID = itemID {
                return .details(itemID)
            }
            return nil // Ensure to return nil if 'id' is not present
        case "profile":
            return .profile
        default:
            return nil  // Return nil if no known host matches
        }
    }
}

