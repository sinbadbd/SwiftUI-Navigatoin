//
//  ProfileDetailView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 23/4/24.
//

import SwiftUI

struct ProfileDetailView: View {
    
    let edges = UIWindow.keyWindow?.safeAreaInsets
    @EnvironmentObject private var coordinator: AppCoordinator
    var body: some View {
        VStack{
            CustomBackView(coordinator: _coordinator,title: "ProfileDetailView Page")
            
            Text("ProfileDetailView Page")
            
            Button("GO to: ReplaceLastWith Home") {
                coordinator.replaceLastWith(.home)
            }
            .buttonBorderShape(.capsule)
            
            Button("GO to: popTo any view") {
                coordinator.popTo(.profile)
            }
            .buttonBorderShape(.capsule)
            
            Button("GO to: NavigateAsRoot") {
                coordinator.navigateAsRoot(.connectionStatus)
            }
            .buttonBorderShape(.capsule)
        }
        .padding(.top, edges?.top)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ProfileDetailView()
}
