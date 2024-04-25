//
//  AddToCart+Route.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 25/4/24.
//

import Foundation
protocol AddToCartProtocol{
    func gotoAddToCartPage()
    func gotCartToHomePage()
    func gotCartToPop()
    func goToNavigateAsRoot()
}

extension AppCoordinator: AddToCartProtocol{
    
    func gotCartToHomePage() {
        navigateTo(.about(.about))
    }
    
    func gotCartToPop() {
        popTo(.platform(.platform))
    }
    
    func goToNavigateAsRoot() {
        navigateAsRoot(.auth(.login))
    }
    
    func gotoAddToCartPage() {
        navigateTo(.addToCart(.addToCart))
    }
}
