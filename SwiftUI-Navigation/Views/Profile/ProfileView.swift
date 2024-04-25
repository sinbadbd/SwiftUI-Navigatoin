//
//  ProfileView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 23/4/24.
//

import SwiftUI

struct ProfileView: View {
    let edges = UIWindow.keyWindow?.safeAreaInsets
    @EnvironmentObject private var coordinator: AppCoordinator
    var body: some View {
        VStack{
            CustomBackView(coordinator: _coordinator,title: "Profile Page")
            
            Text("Profile Page")
            
            Button("Go to profile page") {
                coordinator.gotoAddToCartPage()
            }
        }
        .padding(.top, edges?.top)
        .ignoresSafeArea()
            .navigationBarBackButtonHidden()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ProfileView()
}
