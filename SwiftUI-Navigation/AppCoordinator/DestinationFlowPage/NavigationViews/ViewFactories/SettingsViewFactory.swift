//
//  SettingsViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 25/4/24.
//

import SwiftUI

struct SettingsViewFactory {
    static func viewFactory(_ page: SettingsPage) -> some View {
        switch page {
        case .setting:
            return AnyView(SettingsPageView())
        case .settingTnc:
            return AnyView(SettingsTnCView())
        case .settingPnc:
            return AnyView(SettingsPnCView())
        }
    }
}
