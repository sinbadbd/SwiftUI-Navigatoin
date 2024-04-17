//
//  ConnectReportPage.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

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

#Preview {
    ConnectReportPage()
}
