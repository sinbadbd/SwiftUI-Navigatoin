//
//  Home+Router.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import Foundation

protocol HomeProtocol{
    func gotoConnectionPage()
}

extension AppCoordinator: HomeProtocol{
    func gotoConnectionPage() {
        presentSheet(.connectionStatus)
    }
}
