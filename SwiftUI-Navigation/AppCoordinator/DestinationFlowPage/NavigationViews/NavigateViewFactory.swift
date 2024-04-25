//
//  NavigateViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct NavigateViewFactory {
    
    static func viewForDestination(_ destination: DestinationFlowPage) -> some View {
        switch destination {
        case .auth(let authPage):
            return AnyView(AuthViewFactory.viewFactory(authPage))
        case .platform(let page):
            return AnyView(PlatfromViewFactory.viewFactory(page))
        case .connectionStatus(let connectionStatusPage):
            return AnyView(ConnectionViewFactory.viewFactory(connectionStatusPage))
        case .settings(let page):
            return AnyView(SettingsViewFactory.viewFactory(page))
            
        case .detailsPage(let page):
            return AnyView(DetailsViewFactory.viewFactory(page))
        case .addToCart(let page):
            return AnyView(AddToCartViewFactory.viewFactory(page))
        case .payment(let page):
            return AnyView(PaymentViewFactory.viewFactory(page))

        case .profile(let page):
            return AnyView(ProfileViewFactory.viewFactory(page))

        case .about(let page):
            return AnyView(AboutViewFactory.viewFactory(page))
        }
    }
}


import SwiftUI



public extension UIWindow{
    static var keyWindow: UIWindow? {
        let allScenes = UIApplication.shared.connectedScenes
        for scene in allScenes {
            guard let windowScene = scene as? UIWindowScene else { continue }
            for window in windowScene.windows where window.isKeyWindow {
                return window
            }
        }
        return nil
    }
}
