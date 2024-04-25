//
//  DeepLink.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 18/4/24.
//

import Foundation

extension AppCoordinator {
    // Handle external URL-based deep links
    func handleDeepLink(url: URL) {
        if let route = DeepLinkRoute.from(url: url) {
            processDeepLink(route: route)
        }
    }
    
    // Handle in-app deep links by route enum
    func handleInAppDeepLink(route: DeepLinkRoute) {
        processDeepLink(route: route)
    }
    
    // Common deep link processing logic
    private func processDeepLink(route: DeepLinkRoute) {
        switch route {
        case .auth:
            navigateTo(.auth(.login))
        case .home:
            navigateTo(.platform(.platform))
        case .details(let itemID):
            navigateTo(.detailsPage(.details))
        case .profile:
            navigateTo(.profile(.profile))
        }
    }
}
