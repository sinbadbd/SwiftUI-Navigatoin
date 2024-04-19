//
//  AuthPage.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct AuthPage: View {
    @EnvironmentObject private var coordinator: AppCoordinator
    var body: some View {
        VStack{
            Text("Authentication Page")
            
            Button("Go to Home") {
                coordinator.goToHomePage()
            }
        }
    }
}

#Preview {
    AuthPage()
}
