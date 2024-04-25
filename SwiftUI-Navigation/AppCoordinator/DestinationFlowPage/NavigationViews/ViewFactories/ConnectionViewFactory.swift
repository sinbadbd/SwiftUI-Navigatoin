//
//  ConnectionViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 25/4/24.
//

import SwiftUI

struct ConnectionViewFactory {
    static func viewFactory(_ page: ConnectionStatusPage) -> some View {
        switch page {
        case .connection:
            return AnyView(ConnectReportPage())
        }
    }
}
