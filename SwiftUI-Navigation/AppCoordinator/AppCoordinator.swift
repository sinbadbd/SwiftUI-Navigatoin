//
//  AppCoordinator.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI
import Foundation

class AppCoordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    private var stack: [DestinationFlowPage] = []
    @Published var sheetPage: DestinationFlowPage?
    
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
    
    func navigateTo(_ page: DestinationFlowPage) {
        Logger.shared.log("Request to navigate to \(page)", level: .info)
        printStack("Before Navigation")
        removeAllInstancesOf(page)
        stack.append(page)
        updateNavigationPath()
        printStack("After Navigation")
    }
    
    private func removeAllInstancesOf(_ page: DestinationFlowPage) {
        let beforeRemoval = stack
        stack.removeAll { $0 == page }
        Logger.shared.log("Removed all instances of \(page) | Before: \(beforeRemoval) | After: \(stack)", level: .info)
    }
    
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
    
    func popLast() {
        Logger.shared.log("Request to pop last item", level: .info)
        printStack("Before Pop")
        if !stack.isEmpty {
            stack.removeLast()
            updateNavigationPath()
        }
        printStack("After Pop")
    }
    
    func popTo(_ page: DestinationFlowPage) {
        Logger.shared.log("Request to pop to \(page)", level: .info)
        printStack("Before Pop To")
        if let index = stack.firstIndex(where: { $0 == page }) {
            stack = Array(stack.prefix(upTo: index + 1))
            updateNavigationPath()
        }
        printStack("After Pop To")
    }
    
    func navigateAsRoot(_ page: DestinationFlowPage) {
        Logger.shared.log("Request to navigate as root to \(page)", level: .info)
        printStack("Before Set Root")
        stack = [page]
        updateNavigationPath()
        printStack("After Set Root")
    }
    
    private func updateNavigationPath() {
        var newPath = NavigationPath()
        stack.forEach { newPath.append($0) }
        path = newPath
        Logger.shared.log("Navigation path updated", level: .info)
    }
    
    func presentSheet(_ page: DestinationFlowPage) {
        Logger.shared.log("Request to present sheet for \(page)", level: .info)
        sheetPage = page
    }
    
    func dismissSheet() {
        Logger.shared.log("Request to dismiss sheet", level: .info)
        sheetPage = nil
    }
}
