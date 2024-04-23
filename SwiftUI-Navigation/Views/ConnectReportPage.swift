//
//  ConnectReportPage.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

struct ConnectReportPage: View {
    
    let edges = UIWindow.keyWindow?.safeAreaInsets
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        VStack{
            CustomBackView(coordinator: _coordinator, title: "Connecttion Page")
            
            Text("Connecttion Page")
            
            Button("Go to setting page") {
                //coordinator.navigateAsRoot(.settings)
                //coordinator.dismissSheet()
                coordinator.gotoSettingPagePage()
            }
        }
        .padding(.top, edges?.top)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ConnectReportPage()
}
