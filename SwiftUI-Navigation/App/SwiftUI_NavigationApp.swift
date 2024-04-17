//
//  SwiftUI_NavigationApp.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

@main
struct SwiftUI_NavigationApp: App {
    
    @ObservedObject var coordinator = AppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path:  $coordinator.path) {
                ContentView()
                    .navigationDestination(for: DestinationFlowPage.self) { destination in
                        NavigateViewFactory.viewForDestination(destination)
                    }
                    .sheet(item: $coordinator.sheetPage) { page in
                        NavigateViewFactory.viewForDestination(page)
                    }
            }
            .environmentObject(coordinator)
            .onAppear {
                print("destination: \(coordinator.path)")
            }
            
        }
    }
}
