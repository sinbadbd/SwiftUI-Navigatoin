//
//  ProfileViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 25/4/24.
//

import SwiftUI

struct ProfileViewFactory {
    static func viewFactory(_ page: profilePage) -> some View {
        switch page {
        case .profile:
            return AnyView(ProfileView())
        }
    }
}
