//
//  AdBannerView.swift
//  JlptN3Test
//
//  Created by Jeamin on 8/25/24.
//

import SwiftUI
import GoogleMobileAds

struct AdBannerView: UIViewRepresentable {
    var adUnitID: String

    func makeUIView(context: Context) -> GADBannerView {
        let banner = GADBannerView(adSize: GADAdSizeBanner)
        banner.adUnitID = adUnitID
        
        // iOS 15 이상에서는 UIWindowScene의 windows를 사용
        if let rootViewController = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow })?.rootViewController {
            banner.rootViewController = rootViewController
        }

        banner.load(GADRequest())
        return banner
    }

    func updateUIView(_ uiView: GADBannerView, context: Context) {
        // 배너 업데이트 로직 (필요할 경우)
    }
}

