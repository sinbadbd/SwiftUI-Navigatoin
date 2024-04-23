//
//  NavigateViewFactory.swift
//  SwiftUI-Navigation
//
//  Created by Imran on 17/4/24.
//

import SwiftUI



public extension UIWindow{
    static var keyWindow: UIWindow? {
        let allScenes = UIApplication.shared.connectedScenes
        for scene in allScenes {
            guard let windowScene = scene as? UIWindowScene else { continue }
            for window in windowScene.windows where window.isKeyWindow {
                return window
            }
        }
        return nil
    }
}

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
        case .settingsTnC: goSettingTncView()
        case .settingsPnP: goSettingPnCView()
        case .profile: goProfilePageView()
        case .profileDetail(user: let user): goProfileDetailView()
        case .homeDetail: EmptyView()
        case .generalDetail(text: let text):   EmptyView()
        case .about: AboutPageView()
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
    static func goConnectionViewView() -> some View{
        let view = ConnectReportPage()//PaymentView()
        return view
    } 
    static func goSettingPageView() -> some View{
        let view = settingsPage()
        return view
    }
    
    static func goProfilePageView() -> some View{
        let view = ProfileView()
        return view
    }
    static func goAddToCard() -> some View{
        let view = AddToCartView()//AddToCartView()
        return view
    }
    
    static func getDetailsPage() -> some View{
        let view = DetailScreenView()//DetailScreenView()
        return view
    }
  
    static func goPaymentView() -> some View{
        let view = PaymentView()//PaymentView()
        return view
    }

    static func goProfileDetailView() -> some View{
        let view = ProfileDetailView()
        return view
    }
    
    static func goSettingTncView() -> some View{
        let view = SettingsTnCView()
        return view
    }
    
    static func goSettingPnCView() -> some View{
        let view = SettingsPnCView()
        return view
    }
    
    
}


