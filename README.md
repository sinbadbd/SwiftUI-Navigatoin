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
