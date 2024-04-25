//
//  SettingsTnCView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 23/4/24.
//

import SwiftUI

struct SettingsTnCView: View {
    
    let edges = UIWindow.keyWindow?.safeAreaInsets
    @EnvironmentObject private var coordinator: AppCoordinator
    var body: some View {
        VStack{
            CustomBackView(coordinator: _coordinator,title: "SettingsTnCView Page")
            
            Text("SettingsTnCView Page")
            
            Button("GO to ") {
                //coordinator.navigateAsRoot(.connectionStatus)
            }
            .buttonBorderShape(.capsule)
        }
        .padding(.top, edges?.top)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    SettingsTnCView()
}
