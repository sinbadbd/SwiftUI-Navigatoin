//
//  AddToCartView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 23/4/24.
//

import SwiftUI

struct AddToCartView: View {
    let edges = UIWindow.keyWindow?.safeAreaInsets
    @EnvironmentObject private var coordinator: AppCoordinator
    var body: some View {
        VStack{
            CustomBackView(coordinator: _coordinator,title: "Add to cart Page")
            
            Text("Add to cart Page")
            
            Button("Go to Detail page") {
                coordinator.gotoDetailPage()
            }
        }
        .padding(.top, edges?.top)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    AddToCartView()
}
