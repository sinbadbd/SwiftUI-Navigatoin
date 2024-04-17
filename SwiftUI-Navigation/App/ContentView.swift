//
//  ContentView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Button("Go Login") {
                coordinator.goToAuthPage()
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
