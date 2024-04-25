//
//  AddToCartViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 25/4/24.
//

import SwiftUI

struct AddToCartViewFactory {
    static func viewFactory(_ page: AddToCart) -> some View {
        switch page {
        case .addToCart:
            return AnyView(AddToCartView())
        case .delete:
            return AnyView(Text("Delete"))
        }
    }
}
