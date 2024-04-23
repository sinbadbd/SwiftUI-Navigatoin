## Overview
This document outlines the architecture and usage of navigation and deep linking within a SwiftUI application. It covers how navigation is handled programmatically through a coordinator pattern, and how deep links are mapped to app-specific routes using a URL scheme.

### Components
### DestinationFlowPage: 
An enumeration that defines all possible navigation destinations within the app. Each case may include associated values to pass specific data.

### AppCoordinator: 
A class that manages the navigation stack and orchestrates view transitions based on user actions or deep link activations.

### NavigateViewFactory: 
A static factory class responsible for generating views for specific navigation destinations.

### DeepLinkRoute: 
An enumeration that maps URL components to app-specific navigation routes.

### Navigation Management
### AppCoordinator

Responsible for maintaining a navigation path and optionally managing modal presentations.
Provides methods like navigateTo, replaceLastWith, popTo, and presentSheet to control navigation flow programmatically.

1. **popLast** : Removes the last page from the navigation stack.
2. **replaceLastWith**: Replaces the last page in the navigation stack with a new page.
3. **popTo**: Pops the navigation stack up to and including the specified page.
4. **popToPrevious**: Removes the last page from the navigation stack and executes a completion handler.
5. **navigateAsRoot**: Resets the entire stack to a new root page.

``` swift 
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
            .onOpenURL { url in
                coordinator.handleDeepLink(url: url)
            }
        }
    }
}

```

### Add Nivigation views
``` swift
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
```
```swift
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
``` 

```swift
struct ConnectReportPage: View {
    @EnvironmentObject private var coordinator: AppCoordinator
    var body: some View {
        VStack{
            Text("Connecttion Page")
            
            Button("Go to setting page") {
                coordinator.navigateAsRoot(.settings)
                coordinator.dismissSheet()
            }
        }
    }
}
```
```swift
struct settingsPage: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        VStack{
            Text("Settings Page")
            
            Button("back to home page") {
                coordinator.goToHomePage()
            }
            Button("deeplink to home page") {
                coordinator.handleInAppDeepLink(route: .auth)
            }
        }
    }
}
```


