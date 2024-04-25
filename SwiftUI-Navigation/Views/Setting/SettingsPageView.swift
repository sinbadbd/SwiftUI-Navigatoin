//
//  SettingsPageView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct SettingsPageView: View {
    let edges = UIWindow.keyWindow?.safeAreaInsets

    @EnvironmentObject private var coordinator: AppCoordinator
    var body: some View {
        VStack{
            CustomBackView(coordinator: _coordinator, title: "Setting Page")
            
            Text("Setting Page")
            
            Button("Go to profile page") {
                coordinator.gotoProfilePage()
            }
        }
        .padding(.top, edges?.top)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
            
}

#Preview {
    SettingsPageView()
}
