//
//  PaymentViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 25/4/24.
//

import SwiftUI

struct PaymentViewFactory {
    static func viewFactory(_ page: PaymentPage) -> some View {
        switch page { 
        case .payment:
            return AnyView(PaymentView())
        }
    }
}
