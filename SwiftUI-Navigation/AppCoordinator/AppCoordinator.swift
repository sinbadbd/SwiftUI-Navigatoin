//
//  AppCoordinator.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI
import Foundation

/// `AppCoordinator` manages the navigation and modal presentation layers for the application.
/// It uses a stack to keep track of the navigation state and supports operations like navigation to a new page,
/// popping to a previous page, replacing pages, and setting a new root page.
class AppCoordinator: ObservableObject {
    
    /// The navigation path used to render views in a `NavigationView`.
    @Published var path = NavigationPath()
    
    /// The stack holding all the navigation destinations as pages.
    private var stack: [DestinationFlowPage] = []
    
    /// The page currently presented as a sheet, if any.
    @Published var sheetPage: DestinationFlowPage?
    
    /// Navigate to a specified page and add it to the navigation stack, ensuring no duplicates.
    /// - Parameter page: The destination page to navigate to.
    
    private func printStack(_ message: String = "") {
        if !message.isEmpty {
            Logger.shared.log(message)
        }
        let stackDescription = stack.map { "\($0)" }.joined(separator: " -> ")
        Logger.shared.log("Current Stack: \(stackDescription)", level: .debug)
        if let sheet = sheetPage {
            Logger.shared.log("Current Sheet Presented: \(sheet)", level: .debug)
        } else {
            Logger.shared.log("No Sheet Presented", level: .debug)
        }
    }
    
    /// Navigate to a specified page and add it to the navigation stack, ensuring no duplicates.
    /// - Parameter page: The destination page to navigate to.
    func navigateTo(_ page: DestinationFlowPage) {
        Logger.shared.log("Request to navigate to \(page)", level: .info)
        printStack("Before Navigation")
        removeAllInstancesOf(page)
        stack.append(page)
        updateNavigationPath()
        printStack("After Navigation")
    }
    /// Removes all instances of a specified page from the navigation stack.
    /// - Parameter page: The page to remove from the stack.
    private func removeAllInstancesOf(_ page: DestinationFlowPage) {
        let beforeRemoval = stack
        stack.removeAll { $0 == page }
        Logger.shared.log("Removed all instances of \(page) | Before: \(beforeRemoval) | After: \(stack)", level: .info)
    }
    
    /// Replaces the last page in the navigation stack with the specified new page.
    /// - Parameter page: The new page that will replace the last page in the stack.
    func replaceLastWith(_ page: DestinationFlowPage) {
        Logger.shared.log("Request to replace last with \(page)", level: .info)
        printStack("Before Replacement")
        if !stack.isEmpty {
            stack.removeLast()
        }
        stack.append(page)
        updateNavigationPath()
        printStack("After Replacement")
    }
    
    /// Removes the last page from the navigation stack.
    func popLast() {
        Logger.shared.log("Request to pop last item", level: .info)
        printStack("Before Pop")
        if !stack.isEmpty {
            stack.removeLast()
            updateNavigationPath()
        }
        printStack("After Pop")
    }
    
    /// Pops the stack until a specified page is reached, leaving it as the top of the stack.
    /// - Parameter page: The page to pop to.
    func popTo(_ page: DestinationFlowPage) {
        Logger.shared.log("Request to pop to \(page)", level: .info)
        printStack("Before Pop To")
        if let index = stack.firstIndex(where: { $0 == page }) {
            stack = Array(stack.prefix(upTo: index + 1))
            updateNavigationPath()
        }
        printStack("After Pop To")
    }
    
    /// Pops to the previous item in the navigation stack and calls a completion handler once done.
    /// - Parameter completion: A closure that gets called after the navigation stack is updated.
    func popToPrevious(completion: @escaping () -> Void) {
        Logger.shared.log("Request to pop to previous", level: .info)
        printStack("Before Pop to Previous")
        if !stack.isEmpty {
            stack.removeLast()
            updateNavigationPath()
        }
        printStack("After Pop to Previous")
        completion()  // Call the completion handler
    }
    
    /// Sets the specified page as the root of the navigation stack.
    /// - Parameter page: The page to set as the new root.
    func navigateAsRoot(_ page: DestinationFlowPage) {
        Logger.shared.log("Request to navigate as root to \(page)", level: .info)
        printStack("Before Set Root")
        stack = [page]
        updateNavigationPath()
        printStack("After Set Root")
    }
    
    /// Updates the `path` to reflect the current state of the `stack`.
    /// This method ensures the SwiftUI navigation view is synchronized with the navigation stack.
    private func updateNavigationPath() {
        var newPath = NavigationPath()
        stack.forEach { newPath.append($0) }
        path = newPath
        Logger.shared.log("Navigation path updated", level: .info)
    }
    
    /// Presents a modal sheet for the specified page.
    /// - Parameter page: The page to present as a sheet.
    func presentSheet(_ page: DestinationFlowPage) {
        Logger.shared.log("Request to present sheet for \(page)", level: .info)
        sheetPage = page
    }
    
    /// Dismisses the currently presented sheet.
    func dismissSheet() {
        Logger.shared.log("Request to dismiss sheet", level: .info)
        sheetPage = nil
    }
}
