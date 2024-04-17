//
//  Logger.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import Foundation

enum LogLevel: String {
    case debug = "DEBUG"
    case info = "INFO"
    case warning = "WARNING"
    case error = "ERROR"
}

class Logger {
    static let shared = Logger()
    
    var isDetailedLoggingEnabled: Bool = true
    
    private init() {}
    
    func log(_ message: String, level: LogLevel = .info) {
        guard isDetailedLoggingEnabled else { return }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss.SSS"
        print("[\(dateFormatter.string(from: Date()))] [\(level.rawValue)] \(message)")
    }
}

