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
    
    var title: String?
    
    var body: some View {
        HStack {
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
                .frame(width: 24 , height: 24)
//                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .foregroundColor(.black)
            
            Spacer()
            if let title = title{
                Text(title)
                    .font(.title3)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            Spacer()
                .frame(width: 40)
        }
        //.padding(.top, edges?.top)
        .padding(.horizontal, 16)
        .frame(height: 44)
        .frame(maxWidth: .infinity)
        .background(Color.blue.opacity(0.5))
    }
}

#Preview {
    CustomBackView()
}
