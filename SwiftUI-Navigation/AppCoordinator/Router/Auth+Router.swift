//
//  Auth+Router.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import Foundation

protocol OnBoardProtocol{
    func goToAuthPage()
}

extension AppCoordinator: OnBoardProtocol{
    func goToAuthPage() {
        navigateTo(.auth(.login))
    }
}


protocol AuthProtocol{
    func goToHomePage()
}

extension AppCoordinator: AuthProtocol{
    func goToHomePage() {
        navigateTo(.platform(.platform))
    }
}
