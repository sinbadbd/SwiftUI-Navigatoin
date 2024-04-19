//
//  CustomBackView.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 19/4/24.
//

import SwiftUI

import SwiftUI

struct CustomBackView: View {
    @EnvironmentObject var coordinator: AppCoordinator
    //let edges = UIWindow.keyWindow?.safeAreaInsets
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                // Call popToPrevious with a completion handler
                coordinator.popToPrevious {
                    // Add any actions you want to execute after the pop operation
                    print("Completed navigating back.")
                    // You can add more actions here if needed.
                }
            }) {
                HStack {
                    Image(systemName: "arrow.left")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .foregroundColor(.black)
        }
        //.padding(.top, edges?.top)
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity)
        .background(Color.clear)
    }
}

#Preview {
    CustomBackView()
}
