//
//  NavigateViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI

class NavigateViewFactory{
    
    @ViewBuilder static func viewForDestination(_ destination: DestinationFlowPage) -> some View {
        switch destination {
        case .auth: getAuthView()
        case .home: getHomeView()
        case .connectionStatus: goConnectionViewView()
        case .settings: goSettingPageView()
        case .detailsPage(_): getDetailsPage()
        case .addToCart: goAddToCard()
        case .payment: goPaymentView()
        case .settingsTnC: EmptyView()
        case .settingsPnP: EmptyView()
        case .profile: EmptyView()
        case .profileDetail(user: let user): EmptyView()
        case .homeDetail: EmptyView()
        case .generalDetail(text: let text):   EmptyView()
        }
    }
    
    
    static func getAuthView() -> some View {
        let view = AuthPage()
        return view
    }
    
    static func getHomeView() -> some View {
        let view = HomePageView()//PlatformPage()//HomeView(viewModel: HomeVM.init())
        return view
    }
    
    static func getDetailsPage() -> some View{
        let view = EmptyView()//DetailScreenView()
        return view
    }
    static func goAddToCard() -> some View{
        let view = EmptyView()//AddToCartView()
        return view
    }
    
    static func goPaymentView() -> some View{
        let view = EmptyView()//PaymentView()
        return view
    }
    static func goConnectionViewView() -> some View{
        let view = ConnectReportPage()//PaymentView()
        return view
    }
    static func goSettingPageView() -> some View{
        let view = settingsPage()
        return view
    }
}
