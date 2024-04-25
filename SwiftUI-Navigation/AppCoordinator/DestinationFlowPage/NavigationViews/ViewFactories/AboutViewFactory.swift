//
//  AboutViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 25/4/24.
//

import SwiftUI

struct AboutViewFactory {
    static func viewFactory(_ page: AboutPage) -> some View {
        switch page {
        case .about:
            return AnyView(AboutPageView())
        }
    }
}
