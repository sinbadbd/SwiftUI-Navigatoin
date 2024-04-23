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
        navigateTo(.payment)
    }
    
    func gotoAddToPage() {
        navigateTo(.addToCart)
    }
    
    func gotoSettingPagePage() {
        navigateTo(.settings)
    }
    
    func gotoAboutPage() {
        navigateTo(.about)
    }
    
    func gotoMorePage() {
        
    }
    
    func gotoDetailPage() {
        navigateTo(.profileDetail(user: ""))
    }
    
    func gotoProfilePage() {
        navigateTo(.profile)
    }
    
    func gotoConnectionPage() {
//        presentSheet(.connectionStatus)
        navigateTo(.connectionStatus)
    }
}
