//
//  AuthPage.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct AuthPageView: View {
    let edges = UIWindow.keyWindow?.safeAreaInsets
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        VStack{
            CustomBackView(coordinator: _coordinator)

            Text("Authentication Page")
            
            Button("Go to Home") {
                coordinator.goToHomePage()
            }
        }
        .padding(.top, edges?.top)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    AuthPageView()
}
