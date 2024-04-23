//
//  AboutPageView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 23/4/24.
//

import SwiftUI

struct AboutPageView: View {
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        
        VStack{
            CustomBackView(coordinator: _coordinator)
            ScrollView {
                Text("About Page")
                
                Button("Go to some page") {
                    coordinator.gotoConnectionPage()
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    AboutPageView()
}
