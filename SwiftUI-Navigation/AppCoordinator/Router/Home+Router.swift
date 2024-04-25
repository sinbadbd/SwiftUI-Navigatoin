//
//  Home+Router.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import Foundation

protocol HomeProtocol{
    func gotoConnectionPage()
    func gotoSettingPagePage()
    func gotoAboutPage()
    func gotoMorePage()
    func gotoDetailPage()
    func gotoProfilePage()
    func gotoAddToPage()
    func gotoPaymentPage()
}

extension AppCoordinator: HomeProtocol{
    func gotoPaymentPage() {
        navigateTo(.payment(.payment))
    }
    
    func gotoAddToPage() {
        navigateTo(.addToCart(.addToCart))
    }
    
    func gotoSettingPagePage() {
        navigateTo(.settings(.setting))
    }
    
    func gotoAboutPage() {
        navigateTo(.about(.about))
    }
    
    func gotoMorePage() {
        
    }
    
    func gotoDetailPage() {
        navigateTo(.detailsPage(.details))
    }
    
    func gotoProfilePage() {
        navigateTo(.profile(.profile))
    }
    
    func gotoConnectionPage() {
//        presentSheet(.connectionStatus)
        navigateTo(.connectionStatus(.connection))
    }
}
