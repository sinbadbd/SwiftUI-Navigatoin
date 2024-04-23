//
//  HomePageView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct HomePageView: View {
    
    let edges = UIWindow.keyWindow?.safeAreaInsets
    @EnvironmentObject private var coordinator: AppCoordinator

    var body: some View {
    
        VStack{
            CustomBackView(coordinator: _coordinator, title: "Home Page")
            ScrollView {
                Text("Home Page")
                
                Button("Go to Connection page") {
                    coordinator.gotoConnectionPage()
                }
            }
        }
        .padding(.top, edges?.top)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    HomePageView()
}
