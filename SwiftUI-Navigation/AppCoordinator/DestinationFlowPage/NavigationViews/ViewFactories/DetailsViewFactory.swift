//
//  DetailsViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 25/4/24.
//

import SwiftUI

struct DetailsViewFactory {
    static func viewFactory(_ page: DetailsPage) -> some View {
        switch page {
        case .details:
            return AnyView(DetailScreenView())
        }
    }
}
