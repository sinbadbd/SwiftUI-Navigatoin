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
}

extension AppCoordinator: HomeProtocol{
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
        navigateTo(.detailsPage("Df"))
    }
    
    func gotoProfilePage() {
        navigateTo(.profile)
    }
    
    func gotoConnectionPage() {
//        presentSheet(.connectionStatus)
        navigateTo(.connectionStatus)
    }
}
