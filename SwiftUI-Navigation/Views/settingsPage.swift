//
//  settingsPage.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct settingsPage: View {
    let edges = UIWindow.keyWindow?.safeAreaInsets

    @EnvironmentObject private var coordinator: AppCoordinator
    var body: some View {
        VStack{
            CustomBackView(coordinator: _coordinator)
            
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
    settingsPage()
}
