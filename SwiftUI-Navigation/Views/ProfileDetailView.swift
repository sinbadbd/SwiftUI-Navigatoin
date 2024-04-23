//
//  ProfileDetailView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 23/4/24.
//

import SwiftUI

struct ProfileDetailView: View {
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        
        VStack{
            CustomBackView(coordinator: _coordinator)
            Text("Profile Detail Page")
            
            Button("Go to Connection page") {
                coordinator.gotoConnectionPage()
            }
        }
    }
}

#Preview {
    ProfileDetailView()
}
