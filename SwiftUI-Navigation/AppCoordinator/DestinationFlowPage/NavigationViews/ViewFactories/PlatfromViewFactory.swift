//
//  PlatfromViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 25/4/24.
//

import SwiftUI

struct PlatfromViewFactory {
    static func viewFactory(_ page: PlatformTab) -> some View {
        switch page {
        case .platform:
            return AnyView(HomePageView())
        }
    }
}
