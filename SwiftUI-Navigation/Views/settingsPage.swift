//
//  settingsPage.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct settingsPage: View {
    @EnvironmentObject private var coordinator: AppCoordinator
    var body: some View {
        VStack{
            Text("Settings Page")
            
            Button("back to home page") {
                coordinator.goToHomePage()
            }
        }
    }
}

#Preview {
    settingsPage()
}
