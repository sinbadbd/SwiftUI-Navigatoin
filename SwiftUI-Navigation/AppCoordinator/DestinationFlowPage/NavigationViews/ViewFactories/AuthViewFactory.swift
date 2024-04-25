//
//  AuthViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 24/4/24.
//

import Foundation
import SwiftUI

struct AuthViewFactory {
    static func viewFactory(_ page: AuthPage) -> some View {
        switch page {
        case .login:
            return AnyView(AuthPageView())
        case .otpVerify(let token):
            return AnyView(OTPVerifyPage( token: token))
        case .privacy:
            return AnyView(PrivacyPolicyView())
        case .help:
            return AnyView(HelpView()) 
        }
    }
}
