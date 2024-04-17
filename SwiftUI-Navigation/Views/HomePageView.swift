//
//  HomePageView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct HomePageView: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator

    var body: some View {
    
        VStack{
            Text("Home Page")
            
            Button("Go to Connection page") {
                coordinator.gotoConnectionPage()
            }
        }
    }
}

#Preview {
    HomePageView()
}
